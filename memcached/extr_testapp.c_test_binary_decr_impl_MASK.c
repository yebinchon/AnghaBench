#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  protocol_binary_response_no_extras ;
struct TYPE_4__ {int /*<<< orphan*/  value; } ;
struct TYPE_5__ {TYPE_1__ body; } ;
struct TYPE_6__ {TYPE_2__ message; } ;
typedef  TYPE_3__ protocol_binary_response_decr ;
typedef  int /*<<< orphan*/  protocol_binary_request_no_extras ;
typedef  enum test_return { ____Placeholder_test_return } test_return ;

/* Variables and functions */
 int /*<<< orphan*/  PROTOCOL_BINARY_CMD_DECREMENT ; 
 int /*<<< orphan*/  PROTOCOL_BINARY_RESPONSE_SUCCESS ; 
 int TEST_PASS ; 
 size_t FUNC0 (char*,int,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t,int) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum test_return FUNC8(const char* key, uint8_t cmd) {
    union {
        protocol_binary_request_no_extras request;
        protocol_binary_response_no_extras response_header;
        protocol_binary_response_decr response;
        char bytes[1024];
    } send, receive;
    size_t len = FUNC0(send.bytes, sizeof(send.bytes), cmd,
                                    key, FUNC5(key), 1, 9, 0);

    int ii;
    for (ii = 9; ii >= 0; --ii) {
        FUNC4(send.bytes, len, false);
        if (cmd == PROTOCOL_BINARY_CMD_DECREMENT) {
            FUNC3(receive.bytes, sizeof(receive.bytes));
            FUNC7(&receive.response_header, cmd,
                                     PROTOCOL_BINARY_RESPONSE_SUCCESS);
            FUNC1(FUNC2(receive.response.message.body.value) == ii);
        }
    }

    /* decr on 0 should not wrap */
    FUNC4(send.bytes, len, false);
    if (cmd == PROTOCOL_BINARY_CMD_DECREMENT) {
        FUNC3(receive.bytes, sizeof(receive.bytes));
        FUNC7(&receive.response_header, cmd,
                                 PROTOCOL_BINARY_RESPONSE_SUCCESS);
        FUNC1(FUNC2(receive.response.message.body.value) == 0);
    } else {
        FUNC6();
    }

    return TEST_PASS;
}