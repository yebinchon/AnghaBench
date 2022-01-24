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
struct SN_env {int ket; int c; int bra; int l; scalar_t__* S; int lb; scalar_t__* B; } ;

/* Variables and functions */
 int /*<<< orphan*/  a_56 ; 
 int /*<<< orphan*/  a_57 ; 
 int /*<<< orphan*/  a_58 ; 
 int /*<<< orphan*/  FUNC0 (struct SN_env*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct SN_env*,int,int,scalar_t__) ; 
 int /*<<< orphan*/  s_96 ; 
 int /*<<< orphan*/  s_97 ; 
 int FUNC2 (struct SN_env*) ; 
 int FUNC3 (struct SN_env*,int,int /*<<< orphan*/ ) ; 
 void* FUNC4 (struct SN_env*,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct SN_env * z) { /* backwardmode */
    z->ket = z->c; /* [, line 561 */
    if (!(FUNC0(z, a_58, 3))) return 0; /* substring, line 561 */
    z->bra = z->c; /* ], line 561 */
    {   int ret = FUNC2(z); /* delete, line 563 */
        if (ret < 0) return ret;
    }
    z->B[0] = 0; /* unset test1, line 564 */
    {   int m1 = z->l - z->c; (void)m1; /* or, line 569 */
        z->ket = z->c; /* [, line 565 */
        if (!(FUNC0(z, a_56, 12))) goto lab1; /* substring, line 565 */
        z->bra = z->c; /* ], line 565 */
        z->S[0] = FUNC4(z, z->S[0]); /* -> s, line 567 */
        if (z->S[0] == 0) return -1; /* -> s, line 567 */
        {   int ret = FUNC3(z, 6, s_96); /* <-, line 567 */
            if (ret < 0) return ret;
        }
        {   int ret;
            {   int saved_c = z->c;
                ret = FUNC1(z, z->c, z->c, z->S[0]); /* <+ s, line 567 */
                z->c = saved_c;
            }
            if (ret < 0) return ret;
        }
        goto lab0;
    lab1:
        z->c = z->l - m1;
        z->ket = z->c; /* [, line 570 */
        if (!(FUNC0(z, a_57, 25))) return 0; /* substring, line 570 */
        z->bra = z->c; /* ], line 570 */
        if (z->c > z->lb) return 0; /* atlimit, line 570 */
        z->S[0] = FUNC4(z, z->S[0]); /* -> s, line 574 */
        if (z->S[0] == 0) return -1; /* -> s, line 574 */
        {   int ret = FUNC3(z, 6, s_97); /* <-, line 574 */
            if (ret < 0) return ret;
        }
        {   int ret;
            {   int saved_c = z->c;
                ret = FUNC1(z, z->c, z->c, z->S[0]); /* <+ s, line 574 */
                z->c = saved_c;
            }
            if (ret < 0) return ret;
        }
    }
lab0:
    return 1;
}