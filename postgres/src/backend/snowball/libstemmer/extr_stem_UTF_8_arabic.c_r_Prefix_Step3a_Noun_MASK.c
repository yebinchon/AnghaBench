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
struct SN_env {int bra; int c; int l; int* p; int ket; } ;

/* Variables and functions */
 int /*<<< orphan*/  a_6 ; 
 int FUNC0 (struct SN_env*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int*) ; 
 int FUNC2 (struct SN_env*) ; 

__attribute__((used)) static int FUNC3(struct SN_env * z) { /* forwardmode */
    int among_var;
    z->bra = z->c; /* [, line 374 */
    if (z->c + 3 >= z->l || (z->p[z->c + 3] != 132 && z->p[z->c + 3] != 167)) return 0; /* substring, line 374 */
    among_var = FUNC0(z, a_6, 4);
    if (!(among_var)) return 0;
    z->ket = z->c; /* ], line 374 */
    switch (among_var) { /* among, line 374 */
        case 1:
            if (!(FUNC1(z->p) > 5)) return 0; /* $(<integer expression> > <integer expression>), line 375 */
            {   int ret = FUNC2(z); /* delete, line 375 */
                if (ret < 0) return ret;
            }
            break;
        case 2:
            if (!(FUNC1(z->p) > 4)) return 0; /* $(<integer expression> > <integer expression>), line 376 */
            {   int ret = FUNC2(z); /* delete, line 376 */
                if (ret < 0) return ret;
            }
            break;
    }
    return 1;
}