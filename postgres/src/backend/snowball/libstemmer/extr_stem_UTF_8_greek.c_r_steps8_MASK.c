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
struct SN_env {int ket; int c; int bra; int l; int lb; scalar_t__* S; scalar_t__* B; } ;

/* Variables and functions */
 int /*<<< orphan*/  a_21 ; 
 int /*<<< orphan*/  a_22 ; 
 int /*<<< orphan*/  a_23 ; 
 int /*<<< orphan*/  FUNC0 (struct SN_env*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct SN_env*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct SN_env*,int,int,scalar_t__) ; 
 int /*<<< orphan*/  s_58 ; 
 int /*<<< orphan*/  s_59 ; 
 int /*<<< orphan*/  s_60 ; 
 int /*<<< orphan*/  s_61 ; 
 int FUNC3 (struct SN_env*) ; 
 int FUNC4 (struct SN_env*,int,int /*<<< orphan*/ ) ; 
 void* FUNC5 (struct SN_env*,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct SN_env * z) { /* backwardmode */
    z->ket = z->c; /* [, line 315 */
    if (!(FUNC1(z, a_23, 8))) return 0; /* substring, line 315 */
    z->bra = z->c; /* ], line 315 */
    {   int ret = FUNC3(z); /* delete, line 317 */
        if (ret < 0) return ret;
    }
    z->B[0] = 0; /* unset test1, line 318 */
    {   int m1 = z->l - z->c; (void)m1; /* or, line 325 */
        z->ket = z->c; /* [, line 319 */
        if (!(FUNC1(z, a_21, 33))) goto lab1; /* substring, line 319 */
        z->bra = z->c; /* ], line 319 */
        if (z->c > z->lb) goto lab1; /* atlimit, line 319 */
        z->S[0] = FUNC5(z, z->S[0]); /* -> s, line 324 */
        if (z->S[0] == 0) return -1; /* -> s, line 324 */
        {   int ret = FUNC4(z, 4, s_58); /* <-, line 324 */
            if (ret < 0) return ret;
        }
        {   int ret;
            {   int saved_c = z->c;
                ret = FUNC2(z, z->c, z->c, z->S[0]); /* <+ s, line 324 */
                z->c = saved_c;
            }
            if (ret < 0) return ret;
        }
        goto lab0;
    lab1:
        z->c = z->l - m1;
        z->ket = z->c; /* [, line 326 */
        if (!(FUNC1(z, a_22, 15))) goto lab2; /* substring, line 326 */
        z->bra = z->c; /* ], line 326 */
        if (z->c > z->lb) goto lab2; /* atlimit, line 326 */
        z->S[0] = FUNC5(z, z->S[0]); /* -> s, line 329 */
        if (z->S[0] == 0) return -1; /* -> s, line 329 */
        {   int ret = FUNC4(z, 6, s_59); /* <-, line 329 */
            if (ret < 0) return ret;
        }
        {   int ret;
            {   int saved_c = z->c;
                ret = FUNC2(z, z->c, z->c, z->S[0]); /* <+ s, line 329 */
                z->c = saved_c;
            }
            if (ret < 0) return ret;
        }
        goto lab0;
    lab2:
        z->c = z->l - m1;
        z->ket = z->c; /* [, line 331 */
        if (!(FUNC0(z, 6, s_60))) return 0; /* literal, line 331 */
        z->bra = z->c; /* ], line 331 */
        z->S[0] = FUNC5(z, z->S[0]); /* -> s, line 331 */
        if (z->S[0] == 0) return -1; /* -> s, line 331 */
        {   int ret = FUNC4(z, 6, s_61); /* <-, line 331 */
            if (ret < 0) return ret;
        }
        {   int ret;
            {   int saved_c = z->c;
                ret = FUNC2(z, z->c, z->c, z->S[0]); /* <+ s, line 331 */
                z->c = saved_c;
            }
            if (ret < 0) return ret;
        }
    }
lab0:
    return 1;
}