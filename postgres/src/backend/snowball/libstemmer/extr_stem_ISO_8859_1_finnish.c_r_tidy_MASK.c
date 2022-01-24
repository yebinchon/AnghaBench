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
struct SN_env {int c; int* I; int lb; int l; int ket; int bra; char* p; scalar_t__* S; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct SN_env*,scalar_t__) ; 
 int /*<<< orphan*/  g_AEI ; 
 int /*<<< orphan*/  g_C ; 
 int /*<<< orphan*/  g_V1 ; 
 scalar_t__ FUNC1 (struct SN_env*,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC2 (struct SN_env*) ; 
 int FUNC3 (struct SN_env*) ; 
 scalar_t__ FUNC4 (struct SN_env*,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct SN_env * z) { /* backwardmode */

    {   int mlimit1; /* setlimit, line 174 */
        if (z->c < z->I[0]) return 0;
        mlimit1 = z->lb; z->lb = z->I[0];
        {   int m2 = z->l - z->c; (void)m2; /* do, line 175 */
            {   int m3 = z->l - z->c; (void)m3; /* and, line 175 */
                {   int ret = FUNC2(z); /* call LONG, line 175 */
                    if (ret == 0) goto lab0;
                    if (ret < 0) return ret;
                }
                z->c = z->l - m3;
                z->ket = z->c; /* [, line 175 */
                if (z->c <= z->lb) goto lab0;
                z->c--; /* next, line 175 */
                z->bra = z->c; /* ], line 175 */
                {   int ret = FUNC3(z); /* delete, line 175 */
                    if (ret < 0) return ret;
                }
            }
        lab0:
            z->c = z->l - m2;
        }
        {   int m4 = z->l - z->c; (void)m4; /* do, line 176 */
            z->ket = z->c; /* [, line 176 */
            if (FUNC1(z, g_AEI, 97, 228, 0)) goto lab1; /* grouping AEI, line 176 */
            z->bra = z->c; /* ], line 176 */
            if (FUNC1(z, g_C, 98, 122, 0)) goto lab1; /* grouping C, line 176 */
            {   int ret = FUNC3(z); /* delete, line 176 */
                if (ret < 0) return ret;
            }
        lab1:
            z->c = z->l - m4;
        }
        {   int m5 = z->l - z->c; (void)m5; /* do, line 177 */
            z->ket = z->c; /* [, line 177 */
            if (z->c <= z->lb || z->p[z->c - 1] != 'j') goto lab2; /* literal, line 177 */
            z->c--;
            z->bra = z->c; /* ], line 177 */
            {   int m6 = z->l - z->c; (void)m6; /* or, line 177 */
                if (z->c <= z->lb || z->p[z->c - 1] != 'o') goto lab4; /* literal, line 177 */
                z->c--;
                goto lab3;
            lab4:
                z->c = z->l - m6;
                if (z->c <= z->lb || z->p[z->c - 1] != 'u') goto lab2; /* literal, line 177 */
                z->c--;
            }
        lab3:
            {   int ret = FUNC3(z); /* delete, line 177 */
                if (ret < 0) return ret;
            }
        lab2:
            z->c = z->l - m5;
        }
        {   int m7 = z->l - z->c; (void)m7; /* do, line 178 */
            z->ket = z->c; /* [, line 178 */
            if (z->c <= z->lb || z->p[z->c - 1] != 'o') goto lab5; /* literal, line 178 */
            z->c--;
            z->bra = z->c; /* ], line 178 */
            if (z->c <= z->lb || z->p[z->c - 1] != 'j') goto lab5; /* literal, line 178 */
            z->c--;
            {   int ret = FUNC3(z); /* delete, line 178 */
                if (ret < 0) return ret;
            }
        lab5:
            z->c = z->l - m7;
        }
        z->lb = mlimit1;
    }
    if (FUNC1(z, g_V1, 97, 246, 1) < 0) return 0; /* goto */ /* non V1, line 180 */
    z->ket = z->c; /* [, line 180 */
    if (FUNC1(z, g_C, 98, 122, 0)) return 0; /* grouping C, line 180 */
    z->bra = z->c; /* ], line 180 */
    z->S[0] = FUNC4(z, z->S[0]); /* -> x, line 180 */
    if (z->S[0] == 0) return -1; /* -> x, line 180 */
    if (!(FUNC0(z, z->S[0]))) return 0; /* name x, line 180 */
    {   int ret = FUNC3(z); /* delete, line 180 */
        if (ret < 0) return ret;
    }
    return 1;
}