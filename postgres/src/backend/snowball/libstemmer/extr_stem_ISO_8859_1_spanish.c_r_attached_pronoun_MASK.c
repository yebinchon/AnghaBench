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
 int /*<<< orphan*/  a_1 ; 
 int /*<<< orphan*/  a_2 ; 
 int FUNC0 (struct SN_env*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct SN_env*) ; 
 int /*<<< orphan*/  s_5 ; 
 int /*<<< orphan*/  s_6 ; 
 int /*<<< orphan*/  s_7 ; 
 int /*<<< orphan*/  s_8 ; 
 int /*<<< orphan*/  s_9 ; 
 int FUNC2 (struct SN_env*) ; 
 int FUNC3 (struct SN_env*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct SN_env * z) { /* backwardmode */
    int among_var;
    z->ket = z->c; /* [, line 68 */
    if (z->c - 1 <= z->lb || z->p[z->c - 1] >> 5 != 3 || !((557090 >> (z->p[z->c - 1] & 0x1f)) & 1)) return 0; /* substring, line 68 */
    if (!(FUNC0(z, a_1, 13))) return 0;
    z->bra = z->c; /* ], line 68 */
    if (z->c - 1 <= z->lb || (z->p[z->c - 1] != 111 && z->p[z->c - 1] != 114)) return 0; /* substring, line 72 */
    among_var = FUNC0(z, a_2, 11);
    if (!(among_var)) return 0;
    {   int ret = FUNC1(z); /* call RV, line 72 */
        if (ret <= 0) return ret;
    }
    switch (among_var) { /* among, line 72 */
        case 1:
            z->bra = z->c; /* ], line 73 */
            {   int ret = FUNC3(z, 5, s_5); /* <-, line 73 */
                if (ret < 0) return ret;
            }
            break;
        case 2:
            z->bra = z->c; /* ], line 74 */
            {   int ret = FUNC3(z, 4, s_6); /* <-, line 74 */
                if (ret < 0) return ret;
            }
            break;
        case 3:
            z->bra = z->c; /* ], line 75 */
            {   int ret = FUNC3(z, 2, s_7); /* <-, line 75 */
                if (ret < 0) return ret;
            }
            break;
        case 4:
            z->bra = z->c; /* ], line 76 */
            {   int ret = FUNC3(z, 2, s_8); /* <-, line 76 */
                if (ret < 0) return ret;
            }
            break;
        case 5:
            z->bra = z->c; /* ], line 77 */
            {   int ret = FUNC3(z, 2, s_9); /* <-, line 77 */
                if (ret < 0) return ret;
            }
            break;
        case 6:
            {   int ret = FUNC2(z); /* delete, line 81 */
                if (ret < 0) return ret;
            }
            break;
        case 7:
            if (z->c <= z->lb || z->p[z->c - 1] != 'u') return 0; /* literal, line 82 */
            z->c--;
            {   int ret = FUNC2(z); /* delete, line 82 */
                if (ret < 0) return ret;
            }
            break;
    }
    return 1;
}