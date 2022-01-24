#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  value ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  protocol_binary_response_no_extras ;
typedef  int /*<<< orphan*/  protocol_binary_request_no_extras ;
typedef  enum test_return { ____Placeholder_test_return } test_return ;

/* Variables and functions */
 int /*<<< orphan*/  PROTOCOL_BINARY_CMD_ADD ; 
 int /*<<< orphan*/  PROTOCOL_BINARY_CMD_REPLACE ; 
 int /*<<< orphan*/  PROTOCOL_BINARY_CMD_REPLACEQ ; 
 int /*<<< orphan*/  PROTOCOL_BINARY_RESPONSE_KEY_ENOENT ; 
 int /*<<< orphan*/  PROTOCOL_BINARY_RESPONSE_SUCCESS ; 
 int TEST_PASS ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,int) ; 
 size_t FUNC2 (char*,int,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum test_return FUNC6(const char* key, uint8_t cmd) {
    uint64_t value = 0xdeadbeefdeadcafe;
    union {
        protocol_binary_request_no_extras request;
        protocol_binary_response_no_extras response;
        char bytes[1024];
    } send, receive;
    size_t len = FUNC2(send.bytes, sizeof(send.bytes), cmd,
                                 key, FUNC3(key), &value, sizeof(value),
                                 0, 0);
    FUNC1(send.bytes, len, false);
    FUNC0(receive.bytes, sizeof(receive.bytes));
    FUNC5(&receive.response, cmd,
                             PROTOCOL_BINARY_RESPONSE_KEY_ENOENT);
    len = FUNC2(send.bytes, sizeof(send.bytes),
                          PROTOCOL_BINARY_CMD_ADD,
                          key, FUNC3(key), &value, sizeof(value), 0, 0);
    FUNC1(send.bytes, len, false);
    FUNC0(receive.bytes, sizeof(receive.bytes));
    FUNC5(&receive.response, PROTOCOL_BINARY_CMD_ADD,
                             PROTOCOL_BINARY_RESPONSE_SUCCESS);

    len = FUNC2(send.bytes, sizeof(send.bytes), cmd,
                          key, FUNC3(key), &value, sizeof(value), 0, 0);
    int ii;
    for (ii = 0; ii < 10; ++ii) {
        FUNC1(send.bytes, len, false);
        if (cmd == PROTOCOL_BINARY_CMD_REPLACE) {
            FUNC0(receive.bytes, sizeof(receive.bytes));
            FUNC5(&receive.response,
                                     PROTOCOL_BINARY_CMD_REPLACE,
                                     PROTOCOL_BINARY_RESPONSE_SUCCESS);
        }
    }

    if (cmd == PROTOCOL_BINARY_CMD_REPLACEQ) {
        FUNC4();
    }

    return TEST_PASS;
}