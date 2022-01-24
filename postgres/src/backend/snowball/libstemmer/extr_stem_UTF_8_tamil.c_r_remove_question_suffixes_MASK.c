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
 int /*<<< orphan*/  a_14 ; 
 int /*<<< orphan*/  FUNC0 (struct SN_env*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct SN_env*) ; 
 int FUNC2 (struct SN_env*) ; 
 int /*<<< orphan*/  s_53 ; 
 int FUNC3 (struct SN_env*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct SN_env * z) { /* forwardmode */
    {   int ret = FUNC2(z); /* call has_min_length, line 179 */
        if (ret <= 0) return ret;
    }
    z->B[0] = 0; /* unset found_a_match, line 180 */
    z->lb = z->c; z->c = z->l; /* backwards, line 181 */

    {   int m1 = z->l - z->c; (void)m1; /* do, line 182 */
        z->ket = z->c; /* [, line 183 */
        if (!(FUNC0(z, a_14, 3))) goto lab0; /* among, line 183 */
        z->bra = z->c; /* ], line 183 */
        {   int ret = FUNC3(z, 3, s_53); /* <-, line 183 */
            if (ret < 0) return ret;
        }
        z->B[0] = 1; /* set found_a_match, line 184 */
    lab0:
        z->c = z->l - m1;
    }
    z->c = z->lb;
    /* do, line 187 */
    {   int ret = FUNC1(z); /* call fix_endings, line 187 */
        if (ret == 0) goto lab1;
        if (ret < 0) return ret;
    }
lab1:
    return 1;
}