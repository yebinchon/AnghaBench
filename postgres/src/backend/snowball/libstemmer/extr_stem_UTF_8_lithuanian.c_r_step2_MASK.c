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
struct SN_env {int l; int c; scalar_t__* I; int lb; scalar_t__ ket; scalar_t__ bra; } ;

/* Variables and functions */
 int /*<<< orphan*/  a_1 ; 
 int /*<<< orphan*/  FUNC0 (struct SN_env*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct SN_env*) ; 

__attribute__((used)) static int FUNC2(struct SN_env * z) { /* backwardmode */
    while(1) { /* repeat, line 232 */
        int m1 = z->l - z->c; (void)m1;

        {   int mlimit2; /* setlimit, line 233 */
            if (z->c < z->I[0]) goto lab0;
            mlimit2 = z->lb; z->lb = z->I[0];
            z->ket = z->c; /* [, line 233 */
            if (!(FUNC0(z, a_1, 62))) { z->lb = mlimit2; goto lab0; } /* substring, line 233 */
            z->bra = z->c; /* ], line 233 */
            z->lb = mlimit2;
        }
        {   int ret = FUNC1(z); /* delete, line 303 */
            if (ret < 0) return ret;
        }
        continue;
    lab0:
        z->c = z->l - m1;
        break;
    }
    return 1;
}