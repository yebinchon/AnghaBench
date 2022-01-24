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
struct SN_env {int ket; int c; int l; int lb; char* p; size_t bra; } ;

/* Variables and functions */
 int /*<<< orphan*/  g_v ; 
 scalar_t__ FUNC0 (struct SN_env*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s_8 ; 
 int FUNC1 (struct SN_env*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct SN_env * z) { /* backwardmode */
    z->ket = z->c; /* [, line 94 */
    {   int m1 = z->l - z->c; (void)m1; /* or, line 94 */
        if (z->c <= z->lb || z->p[z->c - 1] != 'y') goto lab1; /* literal, line 94 */
        z->c--;
        goto lab0;
    lab1:
        z->c = z->l - m1;
        if (z->c <= z->lb || z->p[z->c - 1] != 'Y') return 0; /* literal, line 94 */
        z->c--;
    }
lab0:
    z->bra = z->c; /* ], line 94 */
    if (FUNC0(z, g_v, 97, 121, 0)) return 0; /* non v, line 95 */
    /* not, line 95 */
    if (z->c > z->lb) goto lab2; /* atlimit, line 95 */
    return 0;
lab2:
    {   int ret = FUNC1(z, 1, s_8); /* <-, line 96 */
        if (ret < 0) return ret;
    }
    return 1;
}