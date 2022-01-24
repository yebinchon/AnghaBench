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
typedef  int /*<<< orphan*/  protocol_binary_response_no_extras ;
typedef  int /*<<< orphan*/  protocol_binary_request_no_extras ;
typedef  enum test_return { ____Placeholder_test_return } test_return ;

/* Variables and functions */
 int /*<<< orphan*/  PROTOCOL_BINARY_CMD_VERSION ; 
 int /*<<< orphan*/  PROTOCOL_BINARY_RESPONSE_SUCCESS ; 
 int TEST_PASS ; 
 size_t FUNC0 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum test_return FUNC4(void) {
    union {
        protocol_binary_request_no_extras request;
        protocol_binary_response_no_extras response;
        char bytes[1024];
    } buffer;

    size_t len = FUNC0(buffer.bytes, sizeof(buffer.bytes),
                             PROTOCOL_BINARY_CMD_VERSION,
                             NULL, 0, NULL, 0);

    FUNC2(buffer.bytes, len, false);
    FUNC1(buffer.bytes, sizeof(buffer.bytes));
    FUNC3(&buffer.response, PROTOCOL_BINARY_CMD_VERSION,
                             PROTOCOL_BINARY_RESPONSE_SUCCESS);

    return TEST_PASS;
}