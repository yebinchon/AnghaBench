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
struct SN_env {int /*<<< orphan*/  c; int /*<<< orphan*/  ket; int /*<<< orphan*/  bra; } ;

/* Variables and functions */
 int /*<<< orphan*/  a_0 ; 
 int FUNC0 (struct SN_env*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  s_0 ; 
 int /*<<< orphan*/  s_1 ; 
 int /*<<< orphan*/  s_2 ; 
 int /*<<< orphan*/  s_3 ; 
 int /*<<< orphan*/  s_4 ; 
 int /*<<< orphan*/  s_5 ; 
 int /*<<< orphan*/  s_6 ; 
 int /*<<< orphan*/  s_7 ; 
 int /*<<< orphan*/  s_8 ; 
 int FUNC1 (struct SN_env*) ; 
 int FUNC2 (struct SN_env*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct SN_env * z) { /* forwardmode */
    int among_var;
    z->bra = z->c; /* [, line 44 */
    among_var = FUNC0(z, a_0, 24); /* substring, line 44 */
    if (!(among_var)) return 0;
    z->ket = z->c; /* ], line 44 */
    switch (among_var) { /* among, line 44 */
        case 1:
            {   int ret = FUNC1(z); /* delete, line 46 */
                if (ret < 0) return ret;
            }
            break;
        case 2:
            {   int ret = FUNC2(z, 1, s_0); /* <-, line 52 */
                if (ret < 0) return ret;
            }
            break;
        case 3:
            {   int ret = FUNC2(z, 1, s_1); /* <-, line 58 */
                if (ret < 0) return ret;
            }
            break;
        case 4:
            {   int ret = FUNC2(z, 1, s_2); /* <-, line 61 */
                if (ret < 0) return ret;
            }
            break;
        case 5:
            {   int ret = FUNC2(z, 1, s_3); /* <-, line 63 */
                if (ret < 0) return ret;
            }
            break;
        case 6:
            {   int ret = FUNC2(z, 1, s_4); /* <-, line 65 */
                if (ret < 0) return ret;
            }
            break;
        case 7:
            {   int ret = FUNC2(z, 1, s_5); /* <-, line 69 */
                if (ret < 0) return ret;
            }
            break;
        case 8:
            {   int ret = FUNC2(z, 1, s_6); /* <-, line 71 */
                if (ret < 0) return ret;
            }
            break;
        case 9:
            {   int ret = FUNC2(z, 1, s_7); /* <-, line 75 */
                if (ret < 0) return ret;
            }
            break;
        case 10:
            {   int ret = FUNC2(z, 1, s_8); /* <-, line 89 */
                if (ret < 0) return ret;
            }
            break;
    }
    return 1;
}