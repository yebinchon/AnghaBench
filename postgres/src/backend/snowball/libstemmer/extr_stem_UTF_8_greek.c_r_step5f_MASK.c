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
struct SN_env {int l; int c; int ket; int bra; int lb; int* p; scalar_t__* S; scalar_t__* B; } ;

/* Variables and functions */
 int /*<<< orphan*/  a_50 ; 
 int /*<<< orphan*/  a_51 ; 
 int /*<<< orphan*/  FUNC0 (struct SN_env*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct SN_env*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct SN_env*,int,int,scalar_t__) ; 
 int /*<<< orphan*/  s_90 ; 
 int /*<<< orphan*/  s_91 ; 
 int /*<<< orphan*/  s_92 ; 
 int /*<<< orphan*/  s_93 ; 
 int FUNC3 (struct SN_env*) ; 
 int FUNC4 (struct SN_env*,int,int /*<<< orphan*/ ) ; 
 void* FUNC5 (struct SN_env*,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct SN_env * z) { /* backwardmode */
    {   int m1 = z->l - z->c; (void)m1; /* do, line 523 */
        z->ket = z->c; /* [, line 524 */
        if (!(FUNC0(z, 10, s_90))) goto lab0; /* literal, line 524 */
        z->bra = z->c; /* ], line 524 */
        {   int ret = FUNC3(z); /* delete, line 525 */
            if (ret < 0) return ret;
        }
        z->B[0] = 0; /* unset test1, line 526 */
        z->ket = z->c; /* [, line 527 */
        if (z->c - 1 <= z->lb || (z->p[z->c - 1] != 128 && z->p[z->c - 1] != 134)) goto lab0; /* substring, line 527 */
        if (!(FUNC1(z, a_50, 6))) goto lab0;
        z->bra = z->c; /* ], line 527 */
        if (z->c > z->lb) goto lab0; /* atlimit, line 527 */
        z->S[0] = FUNC5(z, z->S[0]); /* -> s, line 528 */
        if (z->S[0] == 0) return -1; /* -> s, line 528 */
        {   int ret = FUNC4(z, 8, s_91); /* <-, line 528 */
            if (ret < 0) return ret;
        }
        {   int ret;
            {   int saved_c = z->c;
                ret = FUNC2(z, z->c, z->c, z->S[0]); /* <+ s, line 528 */
                z->c = saved_c;
            }
            if (ret < 0) return ret;
        }
    lab0:
        z->c = z->l - m1;
    }
    z->ket = z->c; /* [, line 531 */
    if (!(FUNC0(z, 8, s_92))) return 0; /* literal, line 531 */
    z->bra = z->c; /* ], line 531 */
    {   int ret = FUNC3(z); /* delete, line 532 */
        if (ret < 0) return ret;
    }
    z->B[0] = 0; /* unset test1, line 533 */
    z->ket = z->c; /* [, line 534 */
    if (!(FUNC1(z, a_51, 9))) return 0; /* substring, line 534 */
    z->bra = z->c; /* ], line 534 */
    if (z->c > z->lb) return 0; /* atlimit, line 534 */
    z->S[0] = FUNC5(z, z->S[0]); /* -> s, line 536 */
    if (z->S[0] == 0) return -1; /* -> s, line 536 */
    {   int ret = FUNC4(z, 8, s_93); /* <-, line 536 */
        if (ret < 0) return ret;
    }
    {   int ret;
        {   int saved_c = z->c;
            ret = FUNC2(z, z->c, z->c, z->S[0]); /* <+ s, line 536 */
            z->c = saved_c;
        }
        if (ret < 0) return ret;
    }
    return 1;
}