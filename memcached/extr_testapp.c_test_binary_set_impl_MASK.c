#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  value ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint64_t ;
struct TYPE_10__ {scalar_t__ cas; } ;
struct TYPE_11__ {TYPE_1__ response; } ;
struct TYPE_12__ {TYPE_2__ header; } ;
struct TYPE_16__ {TYPE_3__ message; } ;
typedef  TYPE_7__ protocol_binary_response_no_extras ;
struct TYPE_13__ {scalar_t__ cas; } ;
struct TYPE_14__ {TYPE_4__ request; } ;
struct TYPE_15__ {TYPE_5__ header; } ;
struct TYPE_17__ {TYPE_6__ message; } ;
typedef  TYPE_8__ protocol_binary_request_no_extras ;
typedef  enum test_return { ____Placeholder_test_return } test_return ;

/* Variables and functions */
 int /*<<< orphan*/  PROTOCOL_BINARY_CMD_SET ; 
 int /*<<< orphan*/  PROTOCOL_BINARY_CMD_SETQ ; 
 int /*<<< orphan*/  PROTOCOL_BINARY_RESPONSE_SUCCESS ; 
 int TEST_PASS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,int) ; 
 size_t FUNC3 (char*,int,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum test_return FUNC7(const char *key, uint8_t cmd) {
    union {
        protocol_binary_request_no_extras request;
        protocol_binary_response_no_extras response;
        char bytes[1024];
    } send, receive;
    uint64_t value = 0xdeadbeefdeadcafe;
    size_t len = FUNC3(send.bytes, sizeof(send.bytes), cmd,
                                 key, FUNC4(key), &value, sizeof(value),
                                 0, 0);

    /* Set should work over and over again */
    int ii;
    for (ii = 0; ii < 10; ++ii) {
        FUNC2(send.bytes, len, false);
        if (cmd == PROTOCOL_BINARY_CMD_SET) {
            FUNC1(receive.bytes, sizeof(receive.bytes));
            FUNC6(&receive.response, cmd,
                                     PROTOCOL_BINARY_RESPONSE_SUCCESS);
        }
    }

    if (cmd == PROTOCOL_BINARY_CMD_SETQ) {
        return FUNC5();
    }

    send.request.message.header.request.cas = receive.response.message.header.response.cas;
    FUNC2(send.bytes, len, false);
    if (cmd == PROTOCOL_BINARY_CMD_SET) {
        FUNC1(receive.bytes, sizeof(receive.bytes));
        FUNC6(&receive.response, cmd,
                                 PROTOCOL_BINARY_RESPONSE_SUCCESS);
        FUNC0(receive.response.message.header.response.cas != send.request.message.header.request.cas);
    } else {
        return FUNC5();
    }

    return TEST_PASS;
}