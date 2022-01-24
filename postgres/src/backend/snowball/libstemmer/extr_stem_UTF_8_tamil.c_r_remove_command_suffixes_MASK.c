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
struct SN_env {int* B; int lb; int c; int l; int ket; int* p; int bra; } ;

/* Variables and functions */
 int /*<<< orphan*/  a_15 ; 
 int /*<<< orphan*/  FUNC0 (struct SN_env*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct SN_env*) ; 
 int FUNC2 (struct SN_env*) ; 

__attribute__((used)) static int FUNC3(struct SN_env * z) { /* forwardmode */
    {   int ret = FUNC1(z); /* call has_min_length, line 191 */
        if (ret <= 0) return ret;
    }
    z->B[0] = 0; /* unset found_a_match, line 192 */
    z->lb = z->c; z->c = z->l; /* backwards, line 193 */

    z->ket = z->c; /* [, line 194 */
    if (z->c - 5 <= z->lb || z->p[z->c - 1] != 191) return 0; /* among, line 194 */
    if (!(FUNC0(z, a_15, 2))) return 0;
    z->bra = z->c; /* ], line 194 */
    {   int ret = FUNC2(z); /* delete, line 194 */
        if (ret < 0) return ret;
    }
    z->B[0] = 1; /* set found_a_match, line 195 */
    z->c = z->lb;
    return 1;
}