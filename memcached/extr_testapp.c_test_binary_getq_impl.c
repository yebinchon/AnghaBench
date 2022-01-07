
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int protocol_binary_response_no_extras ;
struct TYPE_5__ {int opaque; } ;
struct TYPE_6__ {TYPE_1__ request; } ;
struct TYPE_7__ {TYPE_2__ header; } ;
struct TYPE_8__ {TYPE_3__ message; } ;
typedef TYPE_4__ protocol_binary_request_no_extras ;
typedef int expiration ;
typedef enum test_return { ____Placeholder_test_return } test_return ;


 int PROTOCOL_BINARY_CMD_ADD ;
 int PROTOCOL_BINARY_CMD_GATKQ ;
 int PROTOCOL_BINARY_CMD_GATQ ;
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

__attribute__((used)) static enum test_return test_binary_getq_impl(const char *key, uint8_t cmd) {
    const char *missing = "test_binary_getq_missing";
    union {
        protocol_binary_request_no_extras request;
        protocol_binary_response_no_extras response;
        char bytes[1024];
    } send, temp, receive;

    uint32_t expiration = htonl(3600);
    size_t extlen = 0;
    if (cmd == PROTOCOL_BINARY_CMD_GATQ || cmd == PROTOCOL_BINARY_CMD_GATKQ)
        extlen = sizeof(expiration);

    size_t len = storage_command(send.bytes, sizeof(send.bytes),
                                 PROTOCOL_BINARY_CMD_ADD,
                                 key, strlen(key), ((void*)0), 0,
                                 0, 0);
    size_t len2 = ext_command(temp.bytes, sizeof(temp.bytes), cmd,
                              extlen ? &expiration : ((void*)0), extlen,
                              missing, strlen(missing), ((void*)0), 0);


    temp.request.message.header.request.opaque = 0xfeedface;
    memcpy(send.bytes + len, temp.bytes, len2);
    len += len2;

    len2 = ext_command(temp.bytes, sizeof(temp.bytes), cmd,
                       extlen ? &expiration : ((void*)0), extlen,
                       key, strlen(key), ((void*)0), 0);
    memcpy(send.bytes + len, temp.bytes, len2);
    len += len2;

    safe_send(send.bytes, len, 0);
    safe_recv_packet(receive.bytes, sizeof(receive.bytes));
    validate_response_header(&receive.response, PROTOCOL_BINARY_CMD_ADD,
                             PROTOCOL_BINARY_RESPONSE_SUCCESS);

    safe_recv_packet(receive.bytes, sizeof(receive.bytes));
    validate_response_header(&receive.response, cmd,
                             PROTOCOL_BINARY_RESPONSE_SUCCESS);

    return TEST_PASS;
}
