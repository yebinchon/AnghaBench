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
struct SN_env {int ket; int c; int lb; char* p; int bra; int l; } ;

/* Variables and functions */
 int FUNC0 (struct SN_env*) ; 
 int FUNC1 (struct SN_env*) ; 
 int FUNC2 (struct SN_env*) ; 
 int FUNC3 (struct SN_env*) ; 

__attribute__((used)) static int FUNC4(struct SN_env * z) { /* backwardmode */
    z->ket = z->c; /* [, line 101 */
    if (z->c <= z->lb || z->p[z->c - 1] != 'e') return 0; /* literal, line 101 */
    z->c--;
    z->bra = z->c; /* ], line 101 */
    {   int m1 = z->l - z->c; (void)m1; /* or, line 102 */
        {   int ret = FUNC1(z); /* call R2, line 102 */
            if (ret == 0) goto lab1;
            if (ret < 0) return ret;
        }
        goto lab0;
    lab1:
        z->c = z->l - m1;
        {   int ret = FUNC0(z); /* call R1, line 102 */
            if (ret <= 0) return ret;
        }
        {   int m2 = z->l - z->c; (void)m2; /* not, line 102 */
            {   int ret = FUNC2(z); /* call shortv, line 102 */
                if (ret == 0) goto lab2;
                if (ret < 0) return ret;
            }
            return 0;
        lab2:
            z->c = z->l - m2;
        }
    }
lab0:
    {   int ret = FUNC3(z); /* delete, line 103 */
        if (ret < 0) return ret;
    }
    return 1;
}