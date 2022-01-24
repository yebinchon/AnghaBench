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
 int /*<<< orphan*/  a_7 ; 
 int /*<<< orphan*/  FUNC0 (struct SN_env*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct SN_env*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  s_6 ; 
 int /*<<< orphan*/  s_7 ; 
 int /*<<< orphan*/  s_8 ; 
 int FUNC2 (struct SN_env*) ; 

__attribute__((used)) static int FUNC3(struct SN_env * z) { /* backwardmode */
    int among_var;
    z->ket = z->c; /* [, line 186 */
    among_var = FUNC1(z, a_7, 4); /* substring, line 186 */
    if (!(among_var)) return 0;
    z->bra = z->c; /* ], line 186 */
    switch (among_var) { /* among, line 186 */
        case 1:
            {   int ret = FUNC2(z); /* delete, line 190 */
                if (ret < 0) return ret;
            }
            z->ket = z->c; /* [, line 191 */
            if (!(FUNC0(z, 2, s_6))) return 0; /* literal, line 191 */
            z->bra = z->c; /* ], line 191 */
            if (!(FUNC0(z, 2, s_7))) return 0; /* literal, line 191 */
            {   int ret = FUNC2(z); /* delete, line 191 */
                if (ret < 0) return ret;
            }
            break;
        case 2:
            if (!(FUNC0(z, 2, s_8))) return 0; /* literal, line 194 */
            {   int ret = FUNC2(z); /* delete, line 194 */
                if (ret < 0) return ret;
            }
            break;
        case 3:
            {   int ret = FUNC2(z); /* delete, line 196 */
                if (ret < 0) return ret;
            }
            break;
    }
    return 1;
}