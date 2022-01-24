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
struct SN_env {int /*<<< orphan*/  p; int /*<<< orphan*/  c; int /*<<< orphan*/  bra; int /*<<< orphan*/  ket; } ;

/* Variables and functions */
 int /*<<< orphan*/  a_17 ; 
 int FUNC0 (struct SN_env*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct SN_env*) ; 

__attribute__((used)) static int FUNC3(struct SN_env * z) { /* backwardmode */
    int among_var;
    z->ket = z->c; /* [, line 452 */
    among_var = FUNC0(z, a_17, 12); /* substring, line 452 */
    if (!(among_var)) return 0;
    z->bra = z->c; /* ], line 452 */
    switch (among_var) { /* among, line 452 */
        case 1:
            if (!(FUNC1(z->p) >= 4)) return 0; /* $(<integer expression> >= <integer expression>), line 453 */
            {   int ret = FUNC2(z); /* delete, line 453 */
                if (ret < 0) return ret;
            }
            break;
        case 2:
            if (!(FUNC1(z->p) >= 5)) return 0; /* $(<integer expression> >= <integer expression>), line 454 */
            {   int ret = FUNC2(z); /* delete, line 454 */
                if (ret < 0) return ret;
            }
            break;
        case 3:
            if (!(FUNC1(z->p) >= 6)) return 0; /* $(<integer expression> >= <integer expression>), line 455 */
            {   int ret = FUNC2(z); /* delete, line 455 */
                if (ret < 0) return ret;
            }
            break;
    }
    return 1;
}