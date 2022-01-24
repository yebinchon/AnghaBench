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
struct SN_env {scalar_t__ c; scalar_t__* I; int lb; scalar_t__ ket; scalar_t__ bra; scalar_t__* S; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct SN_env*,scalar_t__) ; 
 int /*<<< orphan*/  g_c ; 
 scalar_t__ FUNC1 (struct SN_env*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct SN_env*) ; 
 scalar_t__ FUNC3 (struct SN_env*,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct SN_env * z) { /* backwardmode */

    {   int mlimit1; /* setlimit, line 78 */
        if (z->c < z->I[0]) return 0;
        mlimit1 = z->lb; z->lb = z->I[0];
        z->ket = z->c; /* [, line 78 */
        if (FUNC1(z, g_c, 98, 122, 0)) { z->lb = mlimit1; return 0; } /* grouping c, line 78 */
        z->bra = z->c; /* ], line 78 */
        z->S[0] = FUNC3(z, z->S[0]); /* -> ch, line 78 */
        if (z->S[0] == 0) return -1; /* -> ch, line 78 */
        z->lb = mlimit1;
    }
    if (!(FUNC0(z, z->S[0]))) return 0; /* name ch, line 79 */
    {   int ret = FUNC2(z); /* delete, line 80 */
        if (ret < 0) return ret;
    }
    return 1;
}