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
struct SN_env {int c; int bra; int l; int* p; int ket; } ;

/* Variables and functions */
 int /*<<< orphan*/  a_5 ; 
 int /*<<< orphan*/  FUNC0 (struct SN_env*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct SN_env*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int*) ; 
 int /*<<< orphan*/  s_58 ; 
 int /*<<< orphan*/  s_59 ; 
 int FUNC3 (struct SN_env*) ; 

__attribute__((used)) static int FUNC4(struct SN_env * z) { /* forwardmode */
    {   int c1 = z->c; /* not, line 365 */
        if (!(FUNC0(z, 4, s_58))) goto lab0; /* literal, line 365 */
        return 0;
    lab0:
        z->c = c1;
    }
    {   int c2 = z->c; /* not, line 366 */
        if (!(FUNC0(z, 4, s_59))) goto lab1; /* literal, line 366 */
        return 0;
    lab1:
        z->c = c2;
    }
    z->bra = z->c; /* [, line 367 */
    if (z->c + 1 >= z->l || (z->p[z->c + 1] != 129 && z->p[z->c + 1] != 136)) return 0; /* substring, line 367 */
    if (!(FUNC1(z, a_5, 2))) return 0;
    z->ket = z->c; /* ], line 367 */
    if (!(FUNC2(z->p) > 3)) return 0; /* $(<integer expression> > <integer expression>), line 368 */
    {   int ret = FUNC3(z); /* delete, line 368 */
        if (ret < 0) return ret;
    }
    return 1;
}