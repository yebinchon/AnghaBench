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
struct SN_env {int ket; int c; int lb; int* p; int bra; int l; } ;

/* Variables and functions */
 int /*<<< orphan*/  a_29 ; 
 int /*<<< orphan*/  a_30 ; 
 int /*<<< orphan*/  FUNC0 (struct SN_env*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct SN_env*,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s_65 ; 
 int FUNC2 (struct SN_env*) ; 

__attribute__((used)) static int FUNC3(struct SN_env * z) { /* backwardmode */
    z->ket = z->c; /* [, line 365 */
    if (z->c - 7 <= z->lb || (z->p[z->c - 1] != 131 && z->p[z->c - 1] != 189)) return 0; /* substring, line 365 */
    if (!(FUNC0(z, a_29, 2))) return 0;
    z->bra = z->c; /* ], line 365 */
    {   int ret = FUNC2(z); /* delete, line 366 */
        if (ret < 0) return ret;
    }
    {   int m1 = z->l - z->c; (void)m1; /* not, line 368 */
        z->ket = z->c; /* [, line 368 */
        if (!(FUNC0(z, a_30, 10))) goto lab0; /* substring, line 368 */
        z->bra = z->c; /* ], line 368 */
        return 0;
    lab0:
        z->c = z->l - m1;
    }
    {   int ret;
        {   int saved_c = z->c;
            ret = FUNC1(z, z->c, z->c, 4, s_65); /* <+, line 371 */
            z->c = saved_c;
        }
        if (ret < 0) return ret;
    }
    return 1;
}