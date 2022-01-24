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
struct SN_env {int ket; int c; int lb; int* p; int bra; } ;

/* Variables and functions */
 int /*<<< orphan*/  a_20 ; 
 int FUNC0 (struct SN_env*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int*) ; 
 int FUNC2 (struct SN_env*) ; 

__attribute__((used)) static int FUNC3(struct SN_env * z) { /* backwardmode */
    int among_var;
    z->ket = z->c; /* [, line 476 */
    if (z->c - 1 <= z->lb || z->p[z->c - 1] != 136) return 0; /* substring, line 476 */
    among_var = FUNC0(z, a_20, 2);
    if (!(among_var)) return 0;
    z->bra = z->c; /* ], line 476 */
    switch (among_var) { /* among, line 476 */
        case 1:
            if (!(FUNC1(z->p) >= 4)) return 0; /* $(<integer expression> >= <integer expression>), line 477 */
            {   int ret = FUNC2(z); /* delete, line 477 */
                if (ret < 0) return ret;
            }
            break;
        case 2:
            if (!(FUNC1(z->p) >= 6)) return 0; /* $(<integer expression> >= <integer expression>), line 478 */
            {   int ret = FUNC2(z); /* delete, line 478 */
                if (ret < 0) return ret;
            }
            break;
    }
    return 1;
}