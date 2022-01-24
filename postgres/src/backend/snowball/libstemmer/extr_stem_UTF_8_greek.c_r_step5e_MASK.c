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
struct SN_env {int ket; int c; int lb; int* p; int bra; scalar_t__* S; scalar_t__* B; } ;

/* Variables and functions */
 int /*<<< orphan*/  a_49 ; 
 int /*<<< orphan*/  FUNC0 (struct SN_env*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct SN_env*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct SN_env*,int,int,scalar_t__) ; 
 int /*<<< orphan*/  s_88 ; 
 int /*<<< orphan*/  s_89 ; 
 int FUNC3 (struct SN_env*) ; 
 int FUNC4 (struct SN_env*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct SN_env*,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct SN_env * z) { /* backwardmode */
    z->ket = z->c; /* [, line 513 */
    if (z->c - 11 <= z->lb || z->p[z->c - 1] != 181) return 0; /* substring, line 513 */
    if (!(FUNC1(z, a_49, 2))) return 0;
    z->bra = z->c; /* ], line 513 */
    {   int ret = FUNC3(z); /* delete, line 515 */
        if (ret < 0) return ret;
    }
    z->B[0] = 0; /* unset test1, line 516 */
    z->ket = z->c; /* [, line 517 */
    if (!(FUNC0(z, 4, s_88))) return 0; /* literal, line 517 */
    z->bra = z->c; /* ], line 517 */
    if (z->c > z->lb) return 0; /* atlimit, line 517 */
    z->S[0] = FUNC5(z, z->S[0]); /* -> s, line 517 */
    if (z->S[0] == 0) return -1; /* -> s, line 517 */
    {   int ret = FUNC4(z, 10, s_89); /* <-, line 517 */
        if (ret < 0) return ret;
    }
    {   int ret;
        {   int saved_c = z->c;
            ret = FUNC2(z, z->c, z->c, z->S[0]); /* <+ s, line 517 */
            z->c = saved_c;
        }
        if (ret < 0) return ret;
    }
    return 1;
}