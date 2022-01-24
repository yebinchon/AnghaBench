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
struct SN_env {scalar_t__ c; scalar_t__* I; int lb; scalar_t__ ket; scalar_t__ bra; int l; char* p; } ;

/* Variables and functions */
 int /*<<< orphan*/  a_1 ; 
 int /*<<< orphan*/  a_2 ; 
 int /*<<< orphan*/  a_3 ; 
 int /*<<< orphan*/  a_4 ; 
 int /*<<< orphan*/  FUNC0 (struct SN_env*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct SN_env*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  s_0 ; 
 int /*<<< orphan*/  s_1 ; 
 int FUNC2 (struct SN_env*) ; 
 int FUNC3 (struct SN_env*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct SN_env * z) { /* backwardmode */
    int among_var;

    {   int mlimit1; /* setlimit, line 70 */
        if (z->c < z->I[0]) return 0;
        mlimit1 = z->lb; z->lb = z->I[0];
        z->ket = z->c; /* [, line 70 */
        among_var = FUNC1(z, a_4, 9); /* substring, line 70 */
        if (!(among_var)) { z->lb = mlimit1; return 0; }
        z->bra = z->c; /* ], line 70 */
        z->lb = mlimit1;
    }
    switch (among_var) { /* among, line 71 */
        case 1:
            {   int m2 = z->l - z->c; (void)m2; /* not, line 73 */
                if (z->c <= z->lb || z->p[z->c - 1] != 'k') goto lab0; /* literal, line 73 */
                z->c--;
                return 0;
            lab0:
                z->c = z->l - m2;
            }
            {   int ret = FUNC2(z); /* delete, line 73 */
                if (ret < 0) return ret;
            }
            break;
        case 2:
            {   int ret = FUNC2(z); /* delete, line 75 */
                if (ret < 0) return ret;
            }
            z->ket = z->c; /* [, line 75 */
            if (!(FUNC0(z, 3, s_0))) return 0; /* literal, line 75 */
            z->bra = z->c; /* ], line 75 */
            {   int ret = FUNC3(z, 3, s_1); /* <-, line 75 */
                if (ret < 0) return ret;
            }
            break;
        case 3:
            {   int ret = FUNC2(z); /* delete, line 79 */
                if (ret < 0) return ret;
            }
            break;
        case 4:
            if (z->c - 1 <= z->lb || z->p[z->c - 1] != 97) return 0; /* among, line 82 */
            if (!(FUNC1(z, a_1, 6))) return 0;
            {   int ret = FUNC2(z); /* delete, line 82 */
                if (ret < 0) return ret;
            }
            break;
        case 5:
            if (z->c - 1 <= z->lb || z->p[z->c - 1] != 228) return 0; /* among, line 84 */
            if (!(FUNC1(z, a_2, 6))) return 0;
            {   int ret = FUNC2(z); /* delete, line 85 */
                if (ret < 0) return ret;
            }
            break;
        case 6:
            if (z->c - 2 <= z->lb || z->p[z->c - 1] != 101) return 0; /* among, line 87 */
            if (!(FUNC1(z, a_3, 2))) return 0;
            {   int ret = FUNC2(z); /* delete, line 87 */
                if (ret < 0) return ret;
            }
            break;
    }
    return 1;
}