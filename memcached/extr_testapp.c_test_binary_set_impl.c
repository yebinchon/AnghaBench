
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int value ;
typedef int uint8_t ;
typedef int uint64_t ;
struct TYPE_10__ {scalar_t__ cas; } ;
struct TYPE_11__ {TYPE_1__ response; } ;
struct TYPE_12__ {TYPE_2__ header; } ;
struct TYPE_16__ {TYPE_3__ message; } ;
typedef TYPE_7__ protocol_binary_response_no_extras ;
struct TYPE_13__ {scalar_t__ cas; } ;
struct TYPE_14__ {TYPE_4__ request; } ;
struct TYPE_15__ {TYPE_5__ header; } ;
struct TYPE_17__ {TYPE_6__ message; } ;
typedef TYPE_8__ protocol_binary_request_no_extras ;
typedef enum test_return { ____Placeholder_test_return } test_return ;


 int PROTOCOL_BINARY_CMD_SET ;
 int PROTOCOL_BINARY_CMD_SETQ ;
 int PROTOCOL_BINARY_RESPONSE_SUCCESS ;
 int TEST_PASS ;
 int assert (int) ;
 int safe_recv_packet (char*,int) ;
 int safe_send (char*,size_t,int) ;
 size_t storage_command (char*,int,int ,char const*,int ,int*,int,int ,int ) ;
 int strlen (char const*) ;
 int test_binary_noop () ;
 int validate_response_header (TYPE_7__*,int ,int ) ;

__attribute__((used)) static enum test_return test_binary_set_impl(const char *key, uint8_t cmd) {
    union {
        protocol_binary_request_no_extras request;
        protocol_binary_response_no_extras response;
        char bytes[1024];
    } send, receive;
    uint64_t value = 0xdeadbeefdeadcafe;
    size_t len = storage_command(send.bytes, sizeof(send.bytes), cmd,
                                 key, strlen(key), &value, sizeof(value),
                                 0, 0);


    int ii;
    for (ii = 0; ii < 10; ++ii) {
        safe_send(send.bytes, len, 0);
        if (cmd == PROTOCOL_BINARY_CMD_SET) {
            safe_recv_packet(receive.bytes, sizeof(receive.bytes));
            validate_response_header(&receive.response, cmd,
                                     PROTOCOL_BINARY_RESPONSE_SUCCESS);
        }
    }

    if (cmd == PROTOCOL_BINARY_CMD_SETQ) {
        return test_binary_noop();
    }

    send.request.message.header.request.cas = receive.response.message.header.response.cas;
    safe_send(send.bytes, len, 0);
    if (cmd == PROTOCOL_BINARY_CMD_SET) {
        safe_recv_packet(receive.bytes, sizeof(receive.bytes));
        validate_response_header(&receive.response, cmd,
                                 PROTOCOL_BINARY_RESPONSE_SUCCESS);
        assert(receive.response.message.header.response.cas != send.request.message.header.request.cas);
    } else {
        return test_binary_noop();
    }

    return TEST_PASS;
}
