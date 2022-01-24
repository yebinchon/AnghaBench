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
struct SN_env {int ket; int c; int bra; int lb; scalar_t__* S; scalar_t__* B; } ;

/* Variables and functions */
 int /*<<< orphan*/  a_5 ; 
 int /*<<< orphan*/  a_6 ; 
 int /*<<< orphan*/  FUNC0 (struct SN_env*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct SN_env*,int,int,scalar_t__) ; 
 int /*<<< orphan*/  s_37 ; 
 int FUNC2 (struct SN_env*) ; 
 int FUNC3 (struct SN_env*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct SN_env*,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct SN_env * z) { /* backwardmode */
    z->ket = z->c; /* [, line 205 */
    if (!(FUNC0(z, a_6, 7))) return 0; /* substring, line 205 */
    z->bra = z->c; /* ], line 205 */
    {   int ret = FUNC2(z); /* delete, line 207 */
        if (ret < 0) return ret;
    }
    z->B[0] = 0; /* unset test1, line 208 */
    z->ket = z->c; /* [, line 209 */
    if (!(FUNC0(z, a_5, 8))) return 0; /* substring, line 209 */
    z->bra = z->c; /* ], line 209 */
    if (z->c > z->lb) return 0; /* atlimit, line 209 */
    z->S[0] = FUNC4(z, z->S[0]); /* -> s, line 210 */
    if (z->S[0] == 0) return -1; /* -> s, line 210 */
    {   int ret = FUNC3(z, 4, s_37); /* <-, line 210 */
        if (ret < 0) return ret;
    }
    {   int ret;
        {   int saved_c = z->c;
            ret = FUNC1(z, z->c, z->c, z->S[0]); /* <+ s, line 210 */
            z->c = saved_c;
        }
        if (ret < 0) return ret;
    }
    return 1;
}