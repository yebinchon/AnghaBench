#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ cmd; int substate; } ;
typedef  TYPE_1__ conn ;

/* Variables and functions */
 scalar_t__ PROTOCOL_BINARY_CMD_APPEND ; 
 scalar_t__ PROTOCOL_BINARY_CMD_PREPEND ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  bin_read_flush_exptime 137 
#define  bin_read_set_value 136 
#define  bin_reading_del_header 135 
#define  bin_reading_get_key 134 
#define  bin_reading_incr_header 133 
#define  bin_reading_sasl_auth 132 
#define  bin_reading_sasl_auth_data 131 
#define  bin_reading_set_header 130 
#define  bin_reading_stat 129 
#define  bin_reading_touch_key 128 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC12(conn *c) {
    FUNC0(c != NULL);
    FUNC0(c->cmd >= 0);

    switch(c->substate) {
    case bin_reading_set_header:
        if (c->cmd == PROTOCOL_BINARY_CMD_APPEND ||
                c->cmd == PROTOCOL_BINARY_CMD_PREPEND) {
            FUNC4(c);
        } else {
            FUNC11(c);
        }
        break;
    case bin_read_set_value:
        FUNC2(c);
        break;
    case bin_reading_get_key:
    case bin_reading_touch_key:
        FUNC8(c);
        break;
    case bin_reading_stat:
        FUNC10(c);
        break;
    case bin_reading_del_header:
        FUNC6(c);
        break;
    case bin_reading_incr_header:
        FUNC1(c);
        break;
    case bin_read_flush_exptime:
        FUNC7(c);
        break;
    case bin_reading_sasl_auth:
        FUNC9(c);
        break;
    case bin_reading_sasl_auth_data:
        FUNC5(c);
        break;
    default:
        FUNC3(stderr, "Not handling substate %d\n", c->substate);
        FUNC0(0);
    }
}