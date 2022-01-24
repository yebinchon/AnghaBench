#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_6__ {int keylen; int bodylen; } ;
struct TYPE_7__ {TYPE_1__ response; } ;
struct TYPE_8__ {TYPE_2__ header; } ;
struct TYPE_9__ {TYPE_3__ message; } ;
typedef  TYPE_4__ protocol_binary_response_no_extras ;
typedef  int /*<<< orphan*/  protocol_binary_request_no_extras ;
typedef  enum test_return { ____Placeholder_test_return } test_return ;

/* Variables and functions */
 int /*<<< orphan*/  PROTOCOL_BINARY_CMD_ADD ; 
 int /*<<< orphan*/  PROTOCOL_BINARY_CMD_APPEND ; 
 int /*<<< orphan*/  PROTOCOL_BINARY_CMD_GETK ; 
 int /*<<< orphan*/  PROTOCOL_BINARY_CMD_NOOP ; 
 int /*<<< orphan*/  PROTOCOL_BINARY_CMD_PREPEND ; 
 int /*<<< orphan*/  PROTOCOL_BINARY_RESPONSE_NOT_STORED ; 
 int /*<<< orphan*/  PROTOCOL_BINARY_RESPONSE_SUCCESS ; 
 int TEST_PASS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (char*,char const*,int) ; 
 size_t FUNC2 (char*,int,int /*<<< orphan*/ ,char const*,int,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t,int) ; 
 size_t FUNC5 (char*,int,int /*<<< orphan*/ ,char const*,int,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum test_return FUNC8(const char *key, uint8_t cmd) {
    union {
        protocol_binary_request_no_extras request;
        protocol_binary_response_no_extras response;
        char bytes[1024];
    } send, receive;
    const char *value = "world";

    size_t len = FUNC2(send.bytes, sizeof(send.bytes), cmd,
                              key, FUNC6(key), value, FUNC6(value));


    FUNC4(send.bytes, len, false);
    FUNC3(receive.bytes, sizeof(receive.bytes));
    FUNC7(&receive.response, cmd,
                             PROTOCOL_BINARY_RESPONSE_NOT_STORED);

    len = FUNC5(send.bytes, sizeof(send.bytes),
                          PROTOCOL_BINARY_CMD_ADD,
                          key, FUNC6(key), value, FUNC6(value), 0, 0);
    FUNC4(send.bytes, len, false);
    FUNC3(receive.bytes, sizeof(receive.bytes));
    FUNC7(&receive.response, PROTOCOL_BINARY_CMD_ADD,
                             PROTOCOL_BINARY_RESPONSE_SUCCESS);

    len = FUNC2(send.bytes, sizeof(send.bytes), cmd,
                      key, FUNC6(key), value, FUNC6(value));
    FUNC4(send.bytes, len, false);

    if (cmd == PROTOCOL_BINARY_CMD_APPEND || cmd == PROTOCOL_BINARY_CMD_PREPEND) {
        FUNC3(receive.bytes, sizeof(receive.bytes));
        FUNC7(&receive.response, cmd,
                                 PROTOCOL_BINARY_RESPONSE_SUCCESS);
    } else {
        len = FUNC2(send.bytes, sizeof(send.bytes), PROTOCOL_BINARY_CMD_NOOP,
                          NULL, 0, NULL, 0);
        FUNC4(send.bytes, len, false);
        FUNC3(receive.bytes, sizeof(receive.bytes));
        FUNC7(&receive.response, PROTOCOL_BINARY_CMD_NOOP,
                                 PROTOCOL_BINARY_RESPONSE_SUCCESS);
    }

    len = FUNC2(send.bytes, sizeof(send.bytes), PROTOCOL_BINARY_CMD_GETK,
                      key, FUNC6(key), NULL, 0);

    FUNC4(send.bytes, len, false);
    FUNC3(receive.bytes, sizeof(receive.bytes));
    FUNC7(&receive.response, PROTOCOL_BINARY_CMD_GETK,
                             PROTOCOL_BINARY_RESPONSE_SUCCESS);

    FUNC0(receive.response.message.header.response.keylen == FUNC6(key));
    FUNC0(receive.response.message.header.response.bodylen == (FUNC6(key) + 2*FUNC6(value) + 4));

    char *ptr = receive.bytes;
    ptr += sizeof(receive.response);
    ptr += 4;

    FUNC0(FUNC1(ptr, key, FUNC6(key)) == 0);
    ptr += FUNC6(key);
    FUNC0(FUNC1(ptr, value, FUNC6(value)) == 0);
    ptr += FUNC6(value);
    FUNC0(FUNC1(ptr, value, FUNC6(value)) == 0);

    return TEST_PASS;
}