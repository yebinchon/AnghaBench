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
struct SN_env {scalar_t__ c; scalar_t__* I; int lb; scalar_t__ ket; scalar_t__ bra; } ;

/* Variables and functions */
 int /*<<< orphan*/  a_7 ; 
 int /*<<< orphan*/  FUNC0 (struct SN_env*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct SN_env*) ; 

__attribute__((used)) static int FUNC2(struct SN_env * z) { /* backwardmode */

    {   int mlimit1; /* setlimit, line 148 */
        if (z->c < z->I[0]) return 0;
        mlimit1 = z->lb; z->lb = z->I[0];
        z->ket = z->c; /* [, line 149 */
        if (!(FUNC0(z, a_7, 87))) { z->lb = mlimit1; return 0; } /* substring, line 149 */
        z->bra = z->c; /* ], line 149 */
        {   int ret = FUNC1(z); /* delete, line 163 */
            if (ret < 0) return ret;
        }
        z->lb = mlimit1;
    }
    return 1;
}