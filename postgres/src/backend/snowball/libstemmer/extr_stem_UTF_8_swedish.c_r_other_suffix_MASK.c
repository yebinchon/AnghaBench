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
struct SN_env {int c; int* I; int lb; int ket; int* p; int bra; } ;

/* Variables and functions */
 int /*<<< orphan*/  a_2 ; 
 int FUNC0 (struct SN_env*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  s_0 ; 
 int /*<<< orphan*/  s_1 ; 
 int FUNC1 (struct SN_env*) ; 
 int FUNC2 (struct SN_env*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct SN_env * z) { /* backwardmode */
    int among_var;

    {   int mlimit1; /* setlimit, line 55 */
        if (z->c < z->I[0]) return 0;
        mlimit1 = z->lb; z->lb = z->I[0];
        z->ket = z->c; /* [, line 56 */
        if (z->c - 1 <= z->lb || z->p[z->c - 1] >> 5 != 3 || !((1572992 >> (z->p[z->c - 1] & 0x1f)) & 1)) { z->lb = mlimit1; return 0; } /* substring, line 56 */
        among_var = FUNC0(z, a_2, 5);
        if (!(among_var)) { z->lb = mlimit1; return 0; }
        z->bra = z->c; /* ], line 56 */
        switch (among_var) { /* among, line 56 */
            case 1:
                {   int ret = FUNC1(z); /* delete, line 57 */
                    if (ret < 0) return ret;
                }
                break;
            case 2:
                {   int ret = FUNC2(z, 4, s_0); /* <-, line 58 */
                    if (ret < 0) return ret;
                }
                break;
            case 3:
                {   int ret = FUNC2(z, 4, s_1); /* <-, line 59 */
                    if (ret < 0) return ret;
                }
                break;
        }
        z->lb = mlimit1;
    }
    return 1;
}