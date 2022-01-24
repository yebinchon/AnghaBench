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
 int /*<<< orphan*/  a_8 ; 
 int FUNC0 (struct SN_env*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct SN_env*) ; 
 int FUNC2 (struct SN_env*) ; 
 int FUNC3 (struct SN_env*) ; 
 int FUNC4 (struct SN_env*) ; 

__attribute__((used)) static int FUNC5(struct SN_env * z) { /* backwardmode */
    int among_var;
    z->ket = z->c; /* [, line 150 */
    if (z->c <= z->lb || (z->p[z->c - 1] != 101 && z->p[z->c - 1] != 108)) return 0; /* substring, line 150 */
    among_var = FUNC0(z, a_8, 2);
    if (!(among_var)) return 0;
    z->bra = z->c; /* ], line 150 */
    switch (among_var) { /* among, line 150 */
        case 1:
            {   int m1 = z->l - z->c; (void)m1; /* or, line 151 */
                {   int ret = FUNC2(z); /* call R2, line 151 */
                    if (ret == 0) goto lab1;
                    if (ret < 0) return ret;
                }
                goto lab0;
            lab1:
                z->c = z->l - m1;
                {   int ret = FUNC1(z); /* call R1, line 151 */
                    if (ret <= 0) return ret;
                }
                {   int m2 = z->l - z->c; (void)m2; /* not, line 151 */
                    {   int ret = FUNC3(z); /* call shortv, line 151 */
                        if (ret == 0) goto lab2;
                        if (ret < 0) return ret;
                    }
                    return 0;
                lab2:
                    z->c = z->l - m2;
                }
            }
        lab0:
            {   int ret = FUNC4(z); /* delete, line 151 */
                if (ret < 0) return ret;
            }
            break;
        case 2:
            {   int ret = FUNC2(z); /* call R2, line 152 */
                if (ret <= 0) return ret;
            }
            if (z->c <= z->lb || z->p[z->c - 1] != 'l') return 0; /* literal, line 152 */
            z->c--;
            {   int ret = FUNC4(z); /* delete, line 152 */
                if (ret < 0) return ret;
            }
            break;
    }
    return 1;
}