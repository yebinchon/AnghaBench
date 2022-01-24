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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,int,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(void)
{
    int i, failed = 0;
    int pbe_type, pbe_nid, last_type = -1, last_nid = -1;

    for (i = 0; FUNC1(&pbe_type, &pbe_nid, i) != 0; i++) {
        if (!FUNC4(FUNC0(pbe_type, pbe_nid, NULL, NULL, 0))) {
            FUNC3("i=%d, pbe_type=%d, pbe_nid=%d", i, pbe_type, pbe_nid);
            failed = 1;
            break;
        }
    }

    if (!failed)
        return 1;

    /* Error: print out whole table */
    for (i = 0; FUNC1(&pbe_type, &pbe_nid, i) != 0; i++) {
        failed = pbe_type < last_type
                 || (pbe_type == last_type && pbe_nid < last_nid);
        FUNC3("PBE type=%d %d (%s): %s\n", pbe_type, pbe_nid,
                  FUNC2(pbe_nid), failed ? "ERROR" : "OK");
        last_type = pbe_type;
        last_nid = pbe_nid;
    }
    return 0;
}