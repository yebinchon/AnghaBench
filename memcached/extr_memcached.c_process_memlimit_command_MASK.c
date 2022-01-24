#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_5__ {int /*<<< orphan*/  value; } ;
typedef  TYPE_1__ token_t ;
typedef  int /*<<< orphan*/  conn ;
struct TYPE_6__ {scalar_t__ verbose; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,size_t const) ; 
 TYPE_2__ settings ; 
 scalar_t__ FUNC5 (size_t) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC6(conn *c, token_t *tokens, const size_t ntokens) {
    uint32_t memlimit;
    FUNC0(c != NULL);

    FUNC4(c, tokens, ntokens);

    if (!FUNC3(tokens[1].value, &memlimit)) {
        FUNC2(c, "ERROR");
    } else {
        if (memlimit < 8) {
            FUNC2(c, "MEMLIMIT_TOO_SMALL cannot set maxbytes to less than 8m");
        } else {
            if (memlimit > 1000000000) {
                FUNC2(c, "MEMLIMIT_ADJUST_FAILED input value is megabytes not bytes");
            } else if (FUNC5((size_t) memlimit * 1024 * 1024)) {
                if (settings.verbose > 0) {
                    FUNC1(stderr, "maxbytes adjusted to %llum\n", (unsigned long long)memlimit);
                }

                FUNC2(c, "OK");
            } else {
                FUNC2(c, "MEMLIMIT_ADJUST_FAILED out of bounds or unable to adjust");
            }
        }
    }
}