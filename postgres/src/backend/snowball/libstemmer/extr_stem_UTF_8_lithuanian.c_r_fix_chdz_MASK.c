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
 int FUNC0 (struct SN_env*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  s_8 ; 
 int /*<<< orphan*/  s_9 ; 
 int FUNC1 (struct SN_env*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct SN_env * z) { /* backwardmode */
    int among_var;
    z->ket = z->c; /* [, line 338 */
    if (z->c - 1 <= z->lb || (z->p[z->c - 1] != 141 && z->p[z->c - 1] != 190)) return 0; /* substring, line 338 */
    among_var = FUNC0(z, a_3, 2);
    if (!(among_var)) return 0;
    z->bra = z->c; /* ], line 338 */
    switch (among_var) { /* among, line 338 */
        case 1:
            {   int ret = FUNC1(z, 1, s_8); /* <-, line 339 */
                if (ret < 0) return ret;
            }
            break;
        case 2:
            {   int ret = FUNC1(z, 1, s_9); /* <-, line 340 */
                if (ret < 0) return ret;
            }
            break;
    }
    return 1;
}