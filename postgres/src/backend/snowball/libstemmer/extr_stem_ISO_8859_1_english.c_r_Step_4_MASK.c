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
struct SN_env {int ket; int c; int lb; int* p; int bra; int /*<<< orphan*/  l; } ;

/* Variables and functions */
 int /*<<< orphan*/  a_7 ; 
 int FUNC0 (struct SN_env*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct SN_env*) ; 
 int FUNC2 (struct SN_env*) ; 

__attribute__((used)) static int FUNC3(struct SN_env * z) { /* backwardmode */
    int among_var;
    z->ket = z->c; /* [, line 141 */
    if (z->c - 1 <= z->lb || z->p[z->c - 1] >> 5 != 3 || !((1864232 >> (z->p[z->c - 1] & 0x1f)) & 1)) return 0; /* substring, line 141 */
    among_var = FUNC0(z, a_7, 18);
    if (!(among_var)) return 0;
    z->bra = z->c; /* ], line 141 */
    {   int ret = FUNC1(z); /* call R2, line 141 */
        if (ret <= 0) return ret;
    }
    switch (among_var) { /* among, line 141 */
        case 1:
            {   int ret = FUNC2(z); /* delete, line 144 */
                if (ret < 0) return ret;
            }
            break;
        case 2:
            {   int m1 = z->l - z->c; (void)m1; /* or, line 145 */
                if (z->c <= z->lb || z->p[z->c - 1] != 's') goto lab1; /* literal, line 145 */
                z->c--;
                goto lab0;
            lab1:
                z->c = z->l - m1;
                if (z->c <= z->lb || z->p[z->c - 1] != 't') return 0; /* literal, line 145 */
                z->c--;
            }
        lab0:
            {   int ret = FUNC2(z); /* delete, line 145 */
                if (ret < 0) return ret;
            }
            break;
    }
    return 1;
}