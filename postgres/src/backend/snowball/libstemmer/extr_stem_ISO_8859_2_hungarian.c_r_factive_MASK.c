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
struct SN_env {int ket; int c; int lb; int* p; int bra; } ;

/* Variables and functions */
 int /*<<< orphan*/  a_7 ; 
 int /*<<< orphan*/  FUNC0 (struct SN_env*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct SN_env*) ; 
 int FUNC2 (struct SN_env*) ; 
 int FUNC3 (struct SN_env*) ; 
 int FUNC4 (struct SN_env*) ; 

__attribute__((used)) static int FUNC5(struct SN_env * z) { /* backwardmode */
    z->ket = z->c; /* [, line 133 */
    if (z->c <= z->lb || (z->p[z->c - 1] != 225 && z->p[z->c - 1] != 233)) return 0; /* substring, line 133 */
    if (!(FUNC0(z, a_7, 2))) return 0;
    z->bra = z->c; /* ], line 133 */
    {   int ret = FUNC1(z); /* call R1, line 133 */
        if (ret <= 0) return ret;
    }
    {   int ret = FUNC2(z); /* call double, line 134 */
        if (ret <= 0) return ret;
    }
    {   int ret = FUNC4(z); /* delete, line 137 */
        if (ret < 0) return ret;
    }
    {   int ret = FUNC3(z); /* call undouble, line 138 */
        if (ret <= 0) return ret;
    }
    return 1;
}