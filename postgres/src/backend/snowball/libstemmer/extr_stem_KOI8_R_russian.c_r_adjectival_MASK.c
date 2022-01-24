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
struct SN_env {int l; int c; int ket; scalar_t__ lb; int* p; size_t bra; } ;

/* Variables and functions */
 int /*<<< orphan*/  a_2 ; 
 int FUNC0 (struct SN_env*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct SN_env*) ; 
 int FUNC2 (struct SN_env*) ; 

__attribute__((used)) static int FUNC3(struct SN_env * z) { /* backwardmode */
    int among_var;
    {   int ret = FUNC1(z); /* call adjective, line 104 */
        if (ret <= 0) return ret;
    }
    {   int m1 = z->l - z->c; (void)m1; /* try, line 111 */
        z->ket = z->c; /* [, line 112 */
        if (z->c <= z->lb || z->p[z->c - 1] >> 5 != 6 || !((671113216 >> (z->p[z->c - 1] & 0x1f)) & 1)) { z->c = z->l - m1; goto lab0; } /* substring, line 112 */
        among_var = FUNC0(z, a_2, 8);
        if (!(among_var)) { z->c = z->l - m1; goto lab0; }
        z->bra = z->c; /* ], line 112 */
        switch (among_var) { /* among, line 112 */
            case 1:
                {   int m2 = z->l - z->c; (void)m2; /* or, line 117 */
                    if (z->c <= z->lb || z->p[z->c - 1] != 0xC1) goto lab2; /* literal, line 117 */
                    z->c--;
                    goto lab1;
                lab2:
                    z->c = z->l - m2;
                    if (z->c <= z->lb || z->p[z->c - 1] != 0xD1) { z->c = z->l - m1; goto lab0; } /* literal, line 117 */
                    z->c--;
                }
            lab1:
                {   int ret = FUNC2(z); /* delete, line 117 */
                    if (ret < 0) return ret;
                }
                break;
            case 2:
                {   int ret = FUNC2(z); /* delete, line 124 */
                    if (ret < 0) return ret;
                }
                break;
        }
    lab0:
        ;
    }
    return 1;
}