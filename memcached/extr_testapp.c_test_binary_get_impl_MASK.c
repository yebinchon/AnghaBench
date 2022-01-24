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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  protocol_binary_response_no_extras ;
typedef  int /*<<< orphan*/  protocol_binary_request_no_extras ;
typedef  int /*<<< orphan*/  expiration ;
typedef  enum test_return { ____Placeholder_test_return } test_return ;

/* Variables and functions */
 int /*<<< orphan*/  PROTOCOL_BINARY_CMD_ADD ; 
 int /*<<< orphan*/  PROTOCOL_BINARY_CMD_GAT ; 
 int /*<<< orphan*/  PROTOCOL_BINARY_CMD_GATK ; 
 int /*<<< orphan*/  PROTOCOL_BINARY_RESPONSE_KEY_ENOENT ; 
 int /*<<< orphan*/  PROTOCOL_BINARY_RESPONSE_SUCCESS ; 
 int TEST_PASS ; 
 size_t FUNC0 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t,int) ; 
 size_t FUNC5 (char*,int,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum test_return FUNC8(const char *key, uint8_t cmd) {
    union {
        protocol_binary_request_no_extras request;
        protocol_binary_response_no_extras response;
        char bytes[1024];
    } send, receive;

    uint32_t expiration = FUNC1(3600);
    size_t extlen = 0;
    if (cmd == PROTOCOL_BINARY_CMD_GAT || cmd == PROTOCOL_BINARY_CMD_GATK)
        extlen = sizeof(expiration);

    size_t len = FUNC0(send.bytes, sizeof(send.bytes), cmd,
                             extlen ? &expiration : NULL, extlen,
                             key, FUNC6(key), NULL, 0);

    FUNC4(send.bytes, len, false);
    FUNC3(receive.bytes, sizeof(receive.bytes));
    FUNC7(&receive.response, cmd,
                             PROTOCOL_BINARY_RESPONSE_KEY_ENOENT);

    len = FUNC5(send.bytes, sizeof(send.bytes),
                          PROTOCOL_BINARY_CMD_ADD,
                          key, FUNC6(key), NULL, 0,
                          0, 0);
    FUNC4(send.bytes, len, false);
    FUNC3(receive.bytes, sizeof(receive.bytes));
    FUNC7(&receive.response, PROTOCOL_BINARY_CMD_ADD,
                             PROTOCOL_BINARY_RESPONSE_SUCCESS);

    /* run a little pipeline test ;-) */
    len = 0;
    int ii;
    for (ii = 0; ii < 10; ++ii) {
        union {
            protocol_binary_request_no_extras request;
            char bytes[1024];
        } temp;
        size_t l = FUNC0(temp.bytes, sizeof(temp.bytes), cmd,
                               extlen ? &expiration : NULL, extlen,
                               key, FUNC6(key), NULL, 0);
        FUNC2(send.bytes + len, temp.bytes, l);
        len += l;
    }

    FUNC4(send.bytes, len, false);
    for (ii = 0; ii < 10; ++ii) {
        FUNC3(receive.bytes, sizeof(receive.bytes));
        FUNC7(&receive.response, cmd,
                                 PROTOCOL_BINARY_RESPONSE_SUCCESS);
    }

    return TEST_PASS;
}