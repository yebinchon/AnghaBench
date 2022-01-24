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
 int /*<<< orphan*/  a_10 ; 
 int FUNC0 (struct SN_env*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct SN_env*) ; 

__attribute__((used)) static int FUNC3(struct SN_env * z) { /* backwardmode */
    int among_var;
    z->ket = z->c; /* [, line 411 */
    among_var = FUNC0(z, a_10, 10); /* substring, line 411 */
    if (!(among_var)) return 0;
    z->bra = z->c; /* ], line 411 */
    switch (among_var) { /* among, line 411 */
        case 1:
            if (!(FUNC1(z->p) >= 4)) return 0; /* $(<integer expression> >= <integer expression>), line 412 */
            {   int ret = FUNC2(z); /* delete, line 412 */
                if (ret < 0) return ret;
            }
            break;
        case 2:
            if (!(FUNC1(z->p) >= 5)) return 0; /* $(<integer expression> >= <integer expression>), line 413 */
            {   int ret = FUNC2(z); /* delete, line 413 */
                if (ret < 0) return ret;
            }
            break;
        case 3:
            if (!(FUNC1(z->p) >= 6)) return 0; /* $(<integer expression> >= <integer expression>), line 414 */
            {   int ret = FUNC2(z); /* delete, line 414 */
                if (ret < 0) return ret;
            }
            break;
    }
    return 1;
}