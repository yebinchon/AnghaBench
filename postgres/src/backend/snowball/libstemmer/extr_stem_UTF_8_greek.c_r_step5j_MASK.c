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
struct SN_env {int ket; int c; int bra; int lb; int* p; scalar_t__* S; scalar_t__* B; } ;

/* Variables and functions */
 int /*<<< orphan*/  a_63 ; 
 int /*<<< orphan*/  a_64 ; 
 int /*<<< orphan*/  FUNC0 (struct SN_env*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct SN_env*,int,int,scalar_t__) ; 
 int /*<<< orphan*/  s_102 ; 
 int FUNC2 (struct SN_env*) ; 
 int FUNC3 (struct SN_env*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct SN_env*,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct SN_env * z) { /* backwardmode */
    z->ket = z->c; /* [, line 605 */
    if (!(FUNC0(z, a_63, 3))) return 0; /* substring, line 605 */
    z->bra = z->c; /* ], line 605 */
    {   int ret = FUNC2(z); /* delete, line 606 */
        if (ret < 0) return ret;
    }
    z->B[0] = 0; /* unset test1, line 606 */
    z->ket = z->c; /* [, line 608 */
    if (z->c - 1 <= z->lb || z->p[z->c - 1] != 189) return 0; /* substring, line 608 */
    if (!(FUNC0(z, a_64, 6))) return 0;
    z->bra = z->c; /* ], line 608 */
    if (z->c > z->lb) return 0; /* atlimit, line 608 */
    z->S[0] = FUNC4(z, z->S[0]); /* -> s, line 609 */
    if (z->S[0] == 0) return -1; /* -> s, line 609 */
    {   int ret = FUNC3(z, 4, s_102); /* <-, line 609 */
        if (ret < 0) return ret;
    }
    {   int ret;
        {   int saved_c = z->c;
            ret = FUNC1(z, z->c, z->c, z->S[0]); /* <+ s, line 609 */
            z->c = saved_c;
        }
        if (ret < 0) return ret;
    }
    return 1;
}