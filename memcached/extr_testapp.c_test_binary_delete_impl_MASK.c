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
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  protocol_binary_response_no_extras ;
typedef  int /*<<< orphan*/  protocol_binary_request_no_extras ;
typedef  enum test_return { ____Placeholder_test_return } test_return ;

/* Variables and functions */
 scalar_t__ PROTOCOL_BINARY_CMD_ADD ; 
 scalar_t__ PROTOCOL_BINARY_CMD_DELETE ; 
 int /*<<< orphan*/  PROTOCOL_BINARY_RESPONSE_KEY_ENOENT ; 
 int /*<<< orphan*/  PROTOCOL_BINARY_RESPONSE_SUCCESS ; 
 int TEST_PASS ; 
 size_t FUNC0 (char*,int,scalar_t__,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,int) ; 
 size_t FUNC3 (char*,int,scalar_t__,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum test_return FUNC6(const char *key, uint8_t cmd) {
    union {
        protocol_binary_request_no_extras request;
        protocol_binary_response_no_extras response;
        char bytes[1024];
    } send, receive;
    size_t len = FUNC0(send.bytes, sizeof(send.bytes), cmd,
                             key, FUNC4(key), NULL, 0);

    FUNC2(send.bytes, len, false);
    FUNC1(receive.bytes, sizeof(receive.bytes));
    FUNC5(&receive.response, cmd,
                             PROTOCOL_BINARY_RESPONSE_KEY_ENOENT);
    len = FUNC3(send.bytes, sizeof(send.bytes),
                          PROTOCOL_BINARY_CMD_ADD,
                          key, FUNC4(key), NULL, 0, 0, 0);
    FUNC2(send.bytes, len, false);
    FUNC1(receive.bytes, sizeof(receive.bytes));
    FUNC5(&receive.response, PROTOCOL_BINARY_CMD_ADD,
                             PROTOCOL_BINARY_RESPONSE_SUCCESS);

    len = FUNC0(send.bytes, sizeof(send.bytes),
                      cmd, key, FUNC4(key), NULL, 0);
    FUNC2(send.bytes, len, false);

    if (cmd == PROTOCOL_BINARY_CMD_DELETE) {
        FUNC1(receive.bytes, sizeof(receive.bytes));
        FUNC5(&receive.response, PROTOCOL_BINARY_CMD_DELETE,
                                 PROTOCOL_BINARY_RESPONSE_SUCCESS);
    }

    FUNC2(send.bytes, len, false);
    FUNC1(receive.bytes, sizeof(receive.bytes));
    FUNC5(&receive.response, cmd,
                             PROTOCOL_BINARY_RESPONSE_KEY_ENOENT);

    return TEST_PASS;
}