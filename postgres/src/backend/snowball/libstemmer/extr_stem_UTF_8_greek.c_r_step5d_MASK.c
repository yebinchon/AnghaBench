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
struct SN_env {int ket; int c; int lb; int* p; int bra; int l; scalar_t__* S; scalar_t__* B; } ;

/* Variables and functions */
 int /*<<< orphan*/  a_48 ; 
 int /*<<< orphan*/  FUNC0 (struct SN_env*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct SN_env*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct SN_env*,int,int,scalar_t__) ; 
 int /*<<< orphan*/  s_84 ; 
 int /*<<< orphan*/  s_85 ; 
 int /*<<< orphan*/  s_86 ; 
 int /*<<< orphan*/  s_87 ; 
 int FUNC3 (struct SN_env*) ; 
 int FUNC4 (struct SN_env*,int,int /*<<< orphan*/ ) ; 
 void* FUNC5 (struct SN_env*,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct SN_env * z) { /* backwardmode */
    z->ket = z->c; /* [, line 502 */
    if (z->c - 9 <= z->lb || z->p[z->c - 1] != 131) return 0; /* substring, line 502 */
    if (!(FUNC1(z, a_48, 2))) return 0;
    z->bra = z->c; /* ], line 502 */
    {   int ret = FUNC3(z); /* delete, line 504 */
        if (ret < 0) return ret;
    }
    z->B[0] = 0; /* unset test1, line 505 */
    {   int m1 = z->l - z->c; (void)m1; /* or, line 506 */
        z->ket = z->c; /* [, line 506 */
        if (!(FUNC0(z, 6, s_84))) goto lab1; /* literal, line 506 */
        z->bra = z->c; /* ], line 506 */
        if (z->c > z->lb) goto lab1; /* atlimit, line 506 */
        z->S[0] = FUNC5(z, z->S[0]); /* -> s, line 506 */
        if (z->S[0] == 0) return -1; /* -> s, line 506 */
        {   int ret = FUNC4(z, 6, s_85); /* <-, line 506 */
            if (ret < 0) return ret;
        }
        {   int ret;
            {   int saved_c = z->c;
                ret = FUNC2(z, z->c, z->c, z->S[0]); /* <+ s, line 506 */
                z->c = saved_c;
            }
            if (ret < 0) return ret;
        }
        goto lab0;
    lab1:
        z->c = z->l - m1;
        z->ket = z->c; /* [, line 507 */
        if (!(FUNC0(z, 6, s_86))) return 0; /* literal, line 507 */
        z->bra = z->c; /* ], line 507 */
        z->S[0] = FUNC5(z, z->S[0]); /* -> s, line 507 */
        if (z->S[0] == 0) return -1; /* -> s, line 507 */
        {   int ret = FUNC4(z, 6, s_87); /* <-, line 507 */
            if (ret < 0) return ret;
        }
        {   int ret;
            {   int saved_c = z->c;
                ret = FUNC2(z, z->c, z->c, z->S[0]); /* <+ s, line 507 */
                z->c = saved_c;
            }
            if (ret < 0) return ret;
        }
    }
lab0:
    return 1;
}