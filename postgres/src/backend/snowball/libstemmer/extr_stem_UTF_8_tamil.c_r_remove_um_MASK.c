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
struct SN_env {int* B; int lb; int c; int l; int ket; int bra; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct SN_env*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct SN_env*) ; 
 int FUNC2 (struct SN_env*) ; 
 int /*<<< orphan*/  s_54 ; 
 int /*<<< orphan*/  s_55 ; 
 int FUNC3 (struct SN_env*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct SN_env * z) { /* forwardmode */
    z->B[0] = 0; /* unset found_a_match, line 200 */
    {   int ret = FUNC2(z); /* call has_min_length, line 201 */
        if (ret <= 0) return ret;
    }
    z->lb = z->c; z->c = z->l; /* backwards, line 202 */

    z->ket = z->c; /* [, line 202 */
    if (!(FUNC0(z, 9, s_54))) return 0; /* literal, line 202 */
    z->bra = z->c; /* ], line 202 */
    {   int ret = FUNC3(z, 3, s_55); /* <-, line 202 */
        if (ret < 0) return ret;
    }
    z->B[0] = 1; /* set found_a_match, line 203 */
    z->c = z->lb;
    {   int c1 = z->c; /* do, line 205 */
        {   int ret = FUNC1(z); /* call fix_ending, line 205 */
            if (ret == 0) goto lab0;
            if (ret < 0) return ret;
        }
    lab0:
        z->c = c1;
    }
    return 1;
}