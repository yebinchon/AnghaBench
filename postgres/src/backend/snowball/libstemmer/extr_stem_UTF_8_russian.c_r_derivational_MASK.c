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
 int /*<<< orphan*/  a_6 ; 
 int /*<<< orphan*/  FUNC0 (struct SN_env*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct SN_env*) ; 
 int FUNC2 (struct SN_env*) ; 

__attribute__((used)) static int FUNC3(struct SN_env * z) { /* backwardmode */
    z->ket = z->c; /* [, line 178 */
    if (z->c - 5 <= z->lb || (z->p[z->c - 1] != 130 && z->p[z->c - 1] != 140)) return 0; /* substring, line 178 */
    if (!(FUNC0(z, a_6, 2))) return 0;
    z->bra = z->c; /* ], line 178 */
    {   int ret = FUNC1(z); /* call R2, line 178 */
        if (ret <= 0) return ret;
    }
    {   int ret = FUNC2(z); /* delete, line 181 */
        if (ret < 0) return ret;
    }
    return 1;
}