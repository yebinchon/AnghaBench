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
struct SN_env {int l; int c; int ket; int bra; int* I; int lb; int* p; } ;

/* Variables and functions */
 int /*<<< orphan*/  a_2 ; 
 int /*<<< orphan*/  FUNC0 (struct SN_env*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct SN_env*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct SN_env*) ; 
 int /*<<< orphan*/  s_0 ; 
 int /*<<< orphan*/  s_1 ; 
 int /*<<< orphan*/  s_2 ; 
 int FUNC3 (struct SN_env*) ; 
 int FUNC4 (struct SN_env*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct SN_env * z) { /* backwardmode */
    int among_var;
    {   int m1 = z->l - z->c; (void)m1; /* do, line 68 */
        z->ket = z->c; /* [, line 68 */
        if (!(FUNC0(z, 2, s_0))) goto lab0; /* literal, line 68 */
        z->bra = z->c; /* ], line 68 */
        if (!(FUNC0(z, 2, s_1))) goto lab0; /* literal, line 68 */
        {   int ret = FUNC3(z); /* delete, line 68 */
            if (ret < 0) return ret;
        }
    lab0:
        z->c = z->l - m1;
    }

    {   int mlimit2; /* setlimit, line 69 */
        if (z->c < z->I[0]) return 0;
        mlimit2 = z->lb; z->lb = z->I[0];
        z->ket = z->c; /* [, line 69 */
        if (z->c - 1 <= z->lb || z->p[z->c - 1] >> 5 != 3 || !((1572992 >> (z->p[z->c - 1] & 0x1f)) & 1)) { z->lb = mlimit2; return 0; } /* substring, line 69 */
        among_var = FUNC1(z, a_2, 5);
        if (!(among_var)) { z->lb = mlimit2; return 0; }
        z->bra = z->c; /* ], line 69 */
        z->lb = mlimit2;
    }
    switch (among_var) { /* among, line 70 */
        case 1:
            {   int ret = FUNC3(z); /* delete, line 72 */
                if (ret < 0) return ret;
            }
            {   int m3 = z->l - z->c; (void)m3; /* do, line 72 */
                {   int ret = FUNC2(z); /* call consonant_pair, line 72 */
                    if (ret == 0) goto lab1;
                    if (ret < 0) return ret;
                }
            lab1:
                z->c = z->l - m3;
            }
            break;
        case 2:
            {   int ret = FUNC4(z, 4, s_2); /* <-, line 74 */
                if (ret < 0) return ret;
            }
            break;
    }
    return 1;
}