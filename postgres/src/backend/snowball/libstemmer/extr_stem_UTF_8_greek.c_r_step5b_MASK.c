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
struct SN_env {int l; int c; int ket; int lb; int* p; size_t bra; scalar_t__* S; scalar_t__* B; } ;

/* Variables and functions */
 int /*<<< orphan*/  a_42 ; 
 int /*<<< orphan*/  a_43 ; 
 int /*<<< orphan*/  a_44 ; 
 int /*<<< orphan*/  FUNC0 (struct SN_env*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct SN_env*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  g_v2 ; 
 scalar_t__ FUNC2 (struct SN_env*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct SN_env*,int,int,scalar_t__) ; 
 int /*<<< orphan*/  s_76 ; 
 int /*<<< orphan*/  s_77 ; 
 int /*<<< orphan*/  s_78 ; 
 int /*<<< orphan*/  s_79 ; 
 int FUNC4 (struct SN_env*) ; 
 int FUNC5 (struct SN_env*,int,int /*<<< orphan*/ ) ; 
 void* FUNC6 (struct SN_env*,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct SN_env * z) { /* backwardmode */
    {   int m1 = z->l - z->c; (void)m1; /* do, line 440 */
        z->ket = z->c; /* [, line 441 */
        if (z->c - 9 <= z->lb || z->p[z->c - 1] != 181) goto lab0; /* substring, line 441 */
        if (!(FUNC1(z, a_43, 11))) goto lab0;
        z->bra = z->c; /* ], line 441 */
        {   int ret = FUNC4(z); /* delete, line 444 */
            if (ret < 0) return ret;
        }
        z->B[0] = 0; /* unset test1, line 445 */
        z->ket = z->c; /* [, line 446 */
        if (z->c - 3 <= z->lb || (z->p[z->c - 1] != 129 && z->p[z->c - 1] != 131)) goto lab0; /* substring, line 446 */
        if (!(FUNC1(z, a_42, 2))) goto lab0;
        z->bra = z->c; /* ], line 446 */
        if (z->c > z->lb) goto lab0; /* atlimit, line 446 */
        z->S[0] = FUNC6(z, z->S[0]); /* -> s, line 447 */
        if (z->S[0] == 0) return -1; /* -> s, line 447 */
        {   int ret = FUNC5(z, 8, s_76); /* <-, line 447 */
            if (ret < 0) return ret;
        }
        {   int ret;
            {   int saved_c = z->c;
                ret = FUNC3(z, z->c, z->c, z->S[0]); /* <+ s, line 447 */
                z->c = saved_c;
            }
            if (ret < 0) return ret;
        }
    lab0:
        z->c = z->l - m1;
    }
    z->ket = z->c; /* [, line 452 */
    if (!(FUNC0(z, 6, s_77))) return 0; /* literal, line 452 */
    z->bra = z->c; /* ], line 452 */
    {   int ret = FUNC4(z); /* delete, line 453 */
        if (ret < 0) return ret;
    }
    z->B[0] = 0; /* unset test1, line 454 */
    {   int m2 = z->l - z->c; (void)m2; /* or, line 455 */
        z->ket = z->c; /* [, line 455 */
        if (FUNC2(z, g_v2, 945, 969, 0)) goto lab2; /* grouping v2, line 455 */
        z->bra = z->c; /* ], line 455 */
        z->S[0] = FUNC6(z, z->S[0]); /* -> s, line 455 */
        if (z->S[0] == 0) return -1; /* -> s, line 455 */
        {   int ret = FUNC5(z, 4, s_78); /* <-, line 455 */
            if (ret < 0) return ret;
        }
        {   int ret;
            {   int saved_c = z->c;
                ret = FUNC3(z, z->c, z->c, z->S[0]); /* <+ s, line 455 */
                z->c = saved_c;
            }
            if (ret < 0) return ret;
        }
        goto lab1;
    lab2:
        z->c = z->l - m2;
        z->ket = z->c; /* [, line 456 */
    }
lab1:
    if (!(FUNC1(z, a_44, 95))) return 0; /* substring, line 456 */
    z->bra = z->c; /* ], line 456 */
    if (z->c > z->lb) return 0; /* atlimit, line 456 */
    z->S[0] = FUNC6(z, z->S[0]); /* -> s, line 473 */
    if (z->S[0] == 0) return -1; /* -> s, line 473 */
    {   int ret = FUNC5(z, 4, s_79); /* <-, line 473 */
        if (ret < 0) return ret;
    }
    {   int ret;
        {   int saved_c = z->c;
            ret = FUNC3(z, z->c, z->c, z->S[0]); /* <+ s, line 473 */
            z->c = saved_c;
        }
        if (ret < 0) return ret;
    }
    return 1;
}