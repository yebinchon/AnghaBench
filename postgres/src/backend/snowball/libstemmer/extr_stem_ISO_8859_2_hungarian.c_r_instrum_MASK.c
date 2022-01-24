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
 int /*<<< orphan*/  a_3 ; 
 int /*<<< orphan*/  FUNC0 (struct SN_env*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct SN_env*) ; 
 int FUNC2 (struct SN_env*) ; 
 int FUNC3 (struct SN_env*) ; 
 int FUNC4 (struct SN_env*) ; 

__attribute__((used)) static int FUNC5(struct SN_env * z) { /* backwardmode */
    z->ket = z->c; /* [, line 77 */
    if (z->c - 1 <= z->lb || z->p[z->c - 1] != 108) return 0; /* substring, line 77 */
    if (!(FUNC0(z, a_3, 2))) return 0;
    z->bra = z->c; /* ], line 77 */
    {   int ret = FUNC1(z); /* call R1, line 77 */
        if (ret <= 0) return ret;
    }
    {   int ret = FUNC2(z); /* call double, line 78 */
        if (ret <= 0) return ret;
    }
    {   int ret = FUNC4(z); /* delete, line 81 */
        if (ret < 0) return ret;
    }
    {   int ret = FUNC3(z); /* call undouble, line 82 */
        if (ret <= 0) return ret;
    }
    return 1;
}