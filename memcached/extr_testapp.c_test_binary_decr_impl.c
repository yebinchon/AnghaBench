
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int protocol_binary_response_no_extras ;
struct TYPE_4__ {int value; } ;
struct TYPE_5__ {TYPE_1__ body; } ;
struct TYPE_6__ {TYPE_2__ message; } ;
typedef TYPE_3__ protocol_binary_response_decr ;
typedef int protocol_binary_request_no_extras ;
typedef enum test_return { ____Placeholder_test_return } test_return ;


 int PROTOCOL_BINARY_CMD_DECREMENT ;
 int PROTOCOL_BINARY_RESPONSE_SUCCESS ;
 int TEST_PASS ;
 size_t arithmetic_command (char*,int,int ,char const*,int ,int,int,int ) ;
 int assert (int) ;
 int ntohll (int ) ;
 int safe_recv_packet (char*,int) ;
 int safe_send (char*,size_t,int) ;
 int strlen (char const*) ;
 int test_binary_noop () ;
 int validate_response_header (int *,int ,int ) ;

__attribute__((used)) static enum test_return test_binary_decr_impl(const char* key, uint8_t cmd) {
    union {
        protocol_binary_request_no_extras request;
        protocol_binary_response_no_extras response_header;
        protocol_binary_response_decr response;
        char bytes[1024];
    } send, receive;
    size_t len = arithmetic_command(send.bytes, sizeof(send.bytes), cmd,
                                    key, strlen(key), 1, 9, 0);

    int ii;
    for (ii = 9; ii >= 0; --ii) {
        safe_send(send.bytes, len, 0);
        if (cmd == PROTOCOL_BINARY_CMD_DECREMENT) {
            safe_recv_packet(receive.bytes, sizeof(receive.bytes));
            validate_response_header(&receive.response_header, cmd,
                                     PROTOCOL_BINARY_RESPONSE_SUCCESS);
            assert(ntohll(receive.response.message.body.value) == ii);
        }
    }


    safe_send(send.bytes, len, 0);
    if (cmd == PROTOCOL_BINARY_CMD_DECREMENT) {
        safe_recv_packet(receive.bytes, sizeof(receive.bytes));
        validate_response_header(&receive.response_header, cmd,
                                 PROTOCOL_BINARY_RESPONSE_SUCCESS);
        assert(ntohll(receive.response.message.body.value) == 0);
    } else {
        test_binary_noop();
    }

    return TEST_PASS;
}
