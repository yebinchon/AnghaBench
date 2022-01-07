
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int protocol_binary_response_no_extras ;
typedef int protocol_binary_request_no_extras ;
typedef int expiration ;
typedef enum test_return { ____Placeholder_test_return } test_return ;


 int PROTOCOL_BINARY_CMD_ADD ;
 int PROTOCOL_BINARY_CMD_GAT ;
 int PROTOCOL_BINARY_CMD_GATK ;
 int PROTOCOL_BINARY_RESPONSE_KEY_ENOENT ;
 int PROTOCOL_BINARY_RESPONSE_SUCCESS ;
 int TEST_PASS ;
 size_t ext_command (char*,int,int ,int *,size_t,char const*,int ,int *,int ) ;
 int htonl (int) ;
 int memcpy (char*,char*,size_t) ;
 int safe_recv_packet (char*,int) ;
 int safe_send (char*,size_t,int) ;
 size_t storage_command (char*,int,int ,char const*,int ,int *,int ,int ,int ) ;
 int strlen (char const*) ;
 int validate_response_header (int *,int ,int ) ;

__attribute__((used)) static enum test_return test_binary_get_impl(const char *key, uint8_t cmd) {
    union {
        protocol_binary_request_no_extras request;
        protocol_binary_response_no_extras response;
        char bytes[1024];
    } send, receive;

    uint32_t expiration = htonl(3600);
    size_t extlen = 0;
    if (cmd == PROTOCOL_BINARY_CMD_GAT || cmd == PROTOCOL_BINARY_CMD_GATK)
        extlen = sizeof(expiration);

    size_t len = ext_command(send.bytes, sizeof(send.bytes), cmd,
                             extlen ? &expiration : ((void*)0), extlen,
                             key, strlen(key), ((void*)0), 0);

    safe_send(send.bytes, len, 0);
    safe_recv_packet(receive.bytes, sizeof(receive.bytes));
    validate_response_header(&receive.response, cmd,
                             PROTOCOL_BINARY_RESPONSE_KEY_ENOENT);

    len = storage_command(send.bytes, sizeof(send.bytes),
                          PROTOCOL_BINARY_CMD_ADD,
                          key, strlen(key), ((void*)0), 0,
                          0, 0);
    safe_send(send.bytes, len, 0);
    safe_recv_packet(receive.bytes, sizeof(receive.bytes));
    validate_response_header(&receive.response, PROTOCOL_BINARY_CMD_ADD,
                             PROTOCOL_BINARY_RESPONSE_SUCCESS);


    len = 0;
    int ii;
    for (ii = 0; ii < 10; ++ii) {
        union {
            protocol_binary_request_no_extras request;
            char bytes[1024];
        } temp;
        size_t l = ext_command(temp.bytes, sizeof(temp.bytes), cmd,
                               extlen ? &expiration : ((void*)0), extlen,
                               key, strlen(key), ((void*)0), 0);
        memcpy(send.bytes + len, temp.bytes, l);
        len += l;
    }

    safe_send(send.bytes, len, 0);
    for (ii = 0; ii < 10; ++ii) {
        safe_recv_packet(receive.bytes, sizeof(receive.bytes));
        validate_response_header(&receive.response, cmd,
                                 PROTOCOL_BINARY_RESPONSE_SUCCESS);
    }

    return TEST_PASS;
}
