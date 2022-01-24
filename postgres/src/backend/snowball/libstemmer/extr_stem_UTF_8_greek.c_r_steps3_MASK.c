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
struct SN_env {int ket; int c; int bra; int l; int lb; int* p; scalar_t__* S; scalar_t__* B; } ;

/* Variables and functions */
 int /*<<< orphan*/  a_7 ; 
 int /*<<< orphan*/  a_8 ; 
 int /*<<< orphan*/  a_9 ; 
 int /*<<< orphan*/  FUNC0 (struct SN_env*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct SN_env*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct SN_env*,int,int,scalar_t__) ; 
 int /*<<< orphan*/  s_38 ; 
 int /*<<< orphan*/  s_39 ; 
 int /*<<< orphan*/  s_40 ; 
 int /*<<< orphan*/  s_41 ; 
 int FUNC3 (struct SN_env*) ; 
 int FUNC4 (struct SN_env*,int,int /*<<< orphan*/ ) ; 
 void* FUNC5 (struct SN_env*,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct SN_env * z) { /* backwardmode */
    z->ket = z->c; /* [, line 217 */
    if (!(FUNC1(z, a_9, 7))) return 0; /* substring, line 217 */
    z->bra = z->c; /* ], line 217 */
    {   int ret = FUNC3(z); /* delete, line 219 */
        if (ret < 0) return ret;
    }
    z->B[0] = 0; /* unset test1, line 220 */
    {   int m1 = z->l - z->c; (void)m1; /* or, line 221 */
        if (!(FUNC0(z, 6, s_38))) goto lab1; /* literal, line 221 */
        if (z->c > z->lb) goto lab1; /* atlimit, line 221 */
        {   int ret = FUNC4(z, 4, s_39); /* <-, line 221 */
            if (ret < 0) return ret;
        }
        goto lab0;
    lab1:
        z->c = z->l - m1;
        z->ket = z->c; /* [, line 222 */
        if (z->c - 3 <= z->lb || z->p[z->c - 1] >> 5 != 5 || !((-2145255424 >> (z->p[z->c - 1] & 0x1f)) & 1)) goto lab2; /* substring, line 222 */
        if (!(FUNC1(z, a_7, 19))) goto lab2;
        z->bra = z->c; /* ], line 222 */
        if (z->c > z->lb) goto lab2; /* atlimit, line 222 */
        z->S[0] = FUNC5(z, z->S[0]); /* -> s, line 226 */
        if (z->S[0] == 0) return -1; /* -> s, line 226 */
        {   int ret = FUNC4(z, 2, s_40); /* <-, line 226 */
            if (ret < 0) return ret;
        }
        {   int ret;
            {   int saved_c = z->c;
                ret = FUNC2(z, z->c, z->c, z->S[0]); /* <+ s, line 226 */
                z->c = saved_c;
            }
            if (ret < 0) return ret;
        }
        goto lab0;
    lab2:
        z->c = z->l - m1;
        z->ket = z->c; /* [, line 228 */
        if (!(FUNC1(z, a_8, 13))) return 0; /* substring, line 228 */
        z->bra = z->c; /* ], line 228 */
        if (z->c > z->lb) return 0; /* atlimit, line 228 */
        z->S[0] = FUNC5(z, z->S[0]); /* -> s, line 231 */
        if (z->S[0] == 0) return -1; /* -> s, line 231 */
        {   int ret = FUNC4(z, 4, s_41); /* <-, line 231 */
            if (ret < 0) return ret;
        }
        {   int ret;
            {   int saved_c = z->c;
                ret = FUNC2(z, z->c, z->c, z->S[0]); /* <+ s, line 231 */
                z->c = saved_c;
            }
            if (ret < 0) return ret;
        }
    }
lab0:
    return 1;
}