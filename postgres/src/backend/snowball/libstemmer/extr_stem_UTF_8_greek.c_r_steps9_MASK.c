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
 int /*<<< orphan*/  a_24 ; 
 int /*<<< orphan*/  a_25 ; 
 int /*<<< orphan*/  a_26 ; 
 int /*<<< orphan*/  FUNC0 (struct SN_env*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct SN_env*,int,int,scalar_t__) ; 
 int /*<<< orphan*/  s_62 ; 
 int /*<<< orphan*/  s_63 ; 
 int FUNC2 (struct SN_env*) ; 
 int FUNC3 (struct SN_env*,int,int /*<<< orphan*/ ) ; 
 void* FUNC4 (struct SN_env*,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct SN_env * z) { /* backwardmode */
    z->ket = z->c; /* [, line 337 */
    if (z->c - 7 <= z->lb || z->p[z->c - 1] >> 5 != 5 || !((-1610481664 >> (z->p[z->c - 1] & 0x1f)) & 1)) return 0; /* substring, line 337 */
    if (!(FUNC0(z, a_26, 3))) return 0;
    z->bra = z->c; /* ], line 337 */
    {   int ret = FUNC2(z); /* delete, line 339 */
        if (ret < 0) return ret;
    }
    z->B[0] = 0; /* unset test1, line 340 */
    {   int m1 = z->l - z->c; (void)m1; /* or, line 343 */
        z->ket = z->c; /* [, line 341 */
        if (!(FUNC0(z, a_24, 4))) goto lab1; /* substring, line 341 */
        z->bra = z->c; /* ], line 341 */
        if (z->c > z->lb) goto lab1; /* atlimit, line 341 */
        z->S[0] = FUNC4(z, z->S[0]); /* -> s, line 342 */
        if (z->S[0] == 0) return -1; /* -> s, line 342 */
        {   int ret = FUNC3(z, 4, s_62); /* <-, line 342 */
            if (ret < 0) return ret;
        }
        {   int ret;
            {   int saved_c = z->c;
                ret = FUNC1(z, z->c, z->c, z->S[0]); /* <+ s, line 342 */
                z->c = saved_c;
            }
            if (ret < 0) return ret;
        }
        goto lab0;
    lab1:
        z->c = z->l - m1;
        z->ket = z->c; /* [, line 344 */
        if (z->c - 1 <= z->lb || (z->p[z->c - 1] != 181 && z->p[z->c - 1] != 189)) return 0; /* substring, line 344 */
        if (!(FUNC0(z, a_25, 2))) return 0;
        z->bra = z->c; /* ], line 344 */
        z->S[0] = FUNC4(z, z->S[0]); /* -> s, line 345 */
        if (z->S[0] == 0) return -1; /* -> s, line 345 */
        {   int ret = FUNC3(z, 4, s_63); /* <-, line 345 */
            if (ret < 0) return ret;
        }
        {   int ret;
            {   int saved_c = z->c;
                ret = FUNC1(z, z->c, z->c, z->S[0]); /* <+ s, line 345 */
                z->c = saved_c;
            }
            if (ret < 0) return ret;
        }
    }
lab0:
    return 1;
}