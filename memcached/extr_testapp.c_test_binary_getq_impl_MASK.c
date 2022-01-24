#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  protocol_binary_response_no_extras ;
struct TYPE_5__ {int opaque; } ;
struct TYPE_6__ {TYPE_1__ request; } ;
struct TYPE_7__ {TYPE_2__ header; } ;
struct TYPE_8__ {TYPE_3__ message; } ;
typedef  TYPE_4__ protocol_binary_request_no_extras ;
typedef  int /*<<< orphan*/  expiration ;
typedef  enum test_return { ____Placeholder_test_return } test_return ;

/* Variables and functions */
 int /*<<< orphan*/  PROTOCOL_BINARY_CMD_ADD ; 
 int /*<<< orphan*/  PROTOCOL_BINARY_CMD_GATKQ ; 
 int /*<<< orphan*/  PROTOCOL_BINARY_CMD_GATQ ; 
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
    const char *missing = "test_binary_getq_missing";
    union {
        protocol_binary_request_no_extras request;
        protocol_binary_response_no_extras response;
        char bytes[1024];
    } send, temp, receive;

    uint32_t expiration = FUNC1(3600);
    size_t extlen = 0;
    if (cmd == PROTOCOL_BINARY_CMD_GATQ || cmd == PROTOCOL_BINARY_CMD_GATKQ)
        extlen = sizeof(expiration);

    size_t len = FUNC5(send.bytes, sizeof(send.bytes),
                                 PROTOCOL_BINARY_CMD_ADD,
                                 key, FUNC6(key), NULL, 0,
                                 0, 0);
    size_t len2 = FUNC0(temp.bytes, sizeof(temp.bytes), cmd,
                              extlen ? &expiration : NULL, extlen,
                              missing, FUNC6(missing), NULL, 0);
    /* I need to change the first opaque so that I can separate the two
     * return packets */
    temp.request.message.header.request.opaque = 0xfeedface;
    FUNC2(send.bytes + len, temp.bytes, len2);
    len += len2;

    len2 = FUNC0(temp.bytes, sizeof(temp.bytes), cmd,
                       extlen ? &expiration : NULL, extlen,
                       key, FUNC6(key), NULL, 0);
    FUNC2(send.bytes + len, temp.bytes, len2);
    len += len2;

    FUNC4(send.bytes, len, false);
    FUNC3(receive.bytes, sizeof(receive.bytes));
    FUNC7(&receive.response, PROTOCOL_BINARY_CMD_ADD,
                             PROTOCOL_BINARY_RESPONSE_SUCCESS);
    /* The first GETQ shouldn't return anything */
    FUNC3(receive.bytes, sizeof(receive.bytes));
    FUNC7(&receive.response, cmd,
                             PROTOCOL_BINARY_RESPONSE_SUCCESS);

    return TEST_PASS;
}