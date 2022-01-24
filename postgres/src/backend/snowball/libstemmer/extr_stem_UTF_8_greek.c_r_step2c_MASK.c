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
struct SN_env {int ket; int c; int lb; int* p; int bra; scalar_t__* S; } ;

/* Variables and functions */
 int /*<<< orphan*/  a_33 ; 
 int /*<<< orphan*/  a_34 ; 
 int /*<<< orphan*/  FUNC0 (struct SN_env*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct SN_env*,int,int,scalar_t__) ; 
 int /*<<< orphan*/  s_67 ; 
 int FUNC2 (struct SN_env*) ; 
 int FUNC3 (struct SN_env*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct SN_env*,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct SN_env * z) { /* backwardmode */
    z->ket = z->c; /* [, line 384 */
    if (z->c - 9 <= z->lb || (z->p[z->c - 1] != 131 && z->p[z->c - 1] != 189)) return 0; /* substring, line 384 */
    if (!(FUNC0(z, a_33, 2))) return 0;
    z->bra = z->c; /* ], line 384 */
    {   int ret = FUNC2(z); /* delete, line 385 */
        if (ret < 0) return ret;
    }
    z->ket = z->c; /* [, line 387 */
    if (!(FUNC0(z, a_34, 15))) return 0; /* substring, line 387 */
    z->bra = z->c; /* ], line 387 */
    z->S[0] = FUNC4(z, z->S[0]); /* -> s, line 389 */
    if (z->S[0] == 0) return -1; /* -> s, line 389 */
    {   int ret = FUNC3(z, 6, s_67); /* <-, line 389 */
        if (ret < 0) return ret;
    }
    {   int ret;
        {   int saved_c = z->c;
            ret = FUNC1(z, z->c, z->c, z->S[0]); /* <+ s, line 389 */
            z->c = saved_c;
        }
        if (ret < 0) return ret;
    }
    return 1;
}