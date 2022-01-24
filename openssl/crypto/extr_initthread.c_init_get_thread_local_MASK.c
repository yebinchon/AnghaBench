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
typedef  int /*<<< orphan*/  THREAD_EVENT_HANDLER ;
typedef  int /*<<< orphan*/  CRYPTO_THREAD_LOCAL ;

/* Variables and functions */
 int /*<<< orphan*/ ** FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ ** FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **) ; 

__attribute__((used)) static THREAD_EVENT_HANDLER **
FUNC5(CRYPTO_THREAD_LOCAL *local, int alloc, int keep)
{
    THREAD_EVENT_HANDLER **hands = FUNC0(local);

    if (alloc) {
        if (hands == NULL) {

            if ((hands = FUNC3(sizeof(*hands))) == NULL)
                return NULL;

            if (!FUNC1(local, hands)) {
                FUNC2(hands);
                return NULL;
            }

#ifndef FIPS_MODE
            if (!FUNC4(hands)) {
                FUNC1(local, NULL);
                FUNC2(hands);
                return NULL;
            }
#endif
        }
    } else if (!keep) {
        FUNC1(local, NULL);
    }

    return hands;
}