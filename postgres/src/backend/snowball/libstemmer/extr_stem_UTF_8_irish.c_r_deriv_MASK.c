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
struct SN_env {int /*<<< orphan*/  c; int /*<<< orphan*/  bra; int /*<<< orphan*/  ket; } ;

/* Variables and functions */
 int /*<<< orphan*/  a_2 ; 
 int FUNC0 (struct SN_env*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct SN_env*) ; 
 int /*<<< orphan*/  s_10 ; 
 int /*<<< orphan*/  s_11 ; 
 int /*<<< orphan*/  s_12 ; 
 int /*<<< orphan*/  s_13 ; 
 int /*<<< orphan*/  s_9 ; 
 int FUNC2 (struct SN_env*) ; 
 int FUNC3 (struct SN_env*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct SN_env * z) { /* backwardmode */
    int among_var;
    z->ket = z->c; /* [, line 114 */
    among_var = FUNC0(z, a_2, 25); /* substring, line 114 */
    if (!(among_var)) return 0;
    z->bra = z->c; /* ], line 114 */
    switch (among_var) { /* among, line 114 */
        case 1:
            {   int ret = FUNC1(z); /* call R2, line 116 */
                if (ret <= 0) return ret;
            }
            {   int ret = FUNC2(z); /* delete, line 116 */
                if (ret < 0) return ret;
            }
            break;
        case 2:
            {   int ret = FUNC3(z, 3, s_9); /* <-, line 118 */
                if (ret < 0) return ret;
            }
            break;
        case 3:
            {   int ret = FUNC3(z, 3, s_10); /* <-, line 120 */
                if (ret < 0) return ret;
            }
            break;
        case 4:
            {   int ret = FUNC3(z, 4, s_11); /* <-, line 122 */
                if (ret < 0) return ret;
            }
            break;
        case 5:
            {   int ret = FUNC3(z, 5, s_12); /* <-, line 124 */
                if (ret < 0) return ret;
            }
            break;
        case 6:
            {   int ret = FUNC3(z, 4, s_13); /* <-, line 126 */
                if (ret < 0) return ret;
            }
            break;
    }
    return 1;
}