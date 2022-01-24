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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  protocol_binary_response_no_extras ;
typedef  int /*<<< orphan*/  protocol_binary_request_no_extras ;
typedef  enum test_return { ____Placeholder_test_return } test_return ;

/* Variables and functions */
 int /*<<< orphan*/  PROTOCOL_BINARY_CMD_ADD ; 
 int /*<<< orphan*/  PROTOCOL_BINARY_CMD_FLUSH ; 
 int /*<<< orphan*/  PROTOCOL_BINARY_CMD_GET ; 
 int /*<<< orphan*/  PROTOCOL_BINARY_RESPONSE_KEY_ENOENT ; 
 int /*<<< orphan*/  PROTOCOL_BINARY_RESPONSE_SUCCESS ; 
 int TEST_PASS ; 
 size_t FUNC0 (char*,int,int /*<<< orphan*/ ,int,int) ; 
 size_t FUNC1 (char*,int,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 size_t FUNC5 (char*,int,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum test_return FUNC8(const char *key, uint8_t cmd) {
    union {
        protocol_binary_request_no_extras request;
        protocol_binary_response_no_extras response;
        char bytes[1024];
    } send, receive;

    size_t len = FUNC5(send.bytes, sizeof(send.bytes),
                                 PROTOCOL_BINARY_CMD_ADD,
                                 key, FUNC6(key), NULL, 0, 0, 0);
    FUNC3(send.bytes, len, false);
    FUNC2(receive.bytes, sizeof(receive.bytes));
    FUNC7(&receive.response, PROTOCOL_BINARY_CMD_ADD,
                             PROTOCOL_BINARY_RESPONSE_SUCCESS);

    len = FUNC0(send.bytes, sizeof(send.bytes), cmd, 2, true);
    FUNC3(send.bytes, len, false);
    if (cmd == PROTOCOL_BINARY_CMD_FLUSH) {
        FUNC2(receive.bytes, sizeof(receive.bytes));
        FUNC7(&receive.response, cmd,
                                 PROTOCOL_BINARY_RESPONSE_SUCCESS);
    }

    len = FUNC1(send.bytes, sizeof(send.bytes), PROTOCOL_BINARY_CMD_GET,
                      key, FUNC6(key), NULL, 0);
    FUNC3(send.bytes, len, false);
    FUNC2(receive.bytes, sizeof(receive.bytes));
    FUNC7(&receive.response, PROTOCOL_BINARY_CMD_GET,
                             PROTOCOL_BINARY_RESPONSE_SUCCESS);

    FUNC4(2);
    FUNC3(send.bytes, len, false);
    FUNC2(receive.bytes, sizeof(receive.bytes));
    FUNC7(&receive.response, PROTOCOL_BINARY_CMD_GET,
                             PROTOCOL_BINARY_RESPONSE_KEY_ENOENT);

    int ii;
    for (ii = 0; ii < 2; ++ii) {
        len = FUNC5(send.bytes, sizeof(send.bytes),
                              PROTOCOL_BINARY_CMD_ADD,
                              key, FUNC6(key), NULL, 0, 0, 0);
        FUNC3(send.bytes, len, false);
        FUNC2(receive.bytes, sizeof(receive.bytes));
        FUNC7(&receive.response, PROTOCOL_BINARY_CMD_ADD,
                                 PROTOCOL_BINARY_RESPONSE_SUCCESS);

        len = FUNC0(send.bytes, sizeof(send.bytes), cmd, 0, ii == 0);
        FUNC3(send.bytes, len, false);
        if (cmd == PROTOCOL_BINARY_CMD_FLUSH) {
            FUNC2(receive.bytes, sizeof(receive.bytes));
            FUNC7(&receive.response, cmd,
                                     PROTOCOL_BINARY_RESPONSE_SUCCESS);
        }

        len = FUNC1(send.bytes, sizeof(send.bytes),
                          PROTOCOL_BINARY_CMD_GET,
                          key, FUNC6(key), NULL, 0);
        FUNC3(send.bytes, len, false);
        FUNC2(receive.bytes, sizeof(receive.bytes));
        FUNC7(&receive.response, PROTOCOL_BINARY_CMD_GET,
                                 PROTOCOL_BINARY_RESPONSE_KEY_ENOENT);
    }

    return TEST_PASS;
}