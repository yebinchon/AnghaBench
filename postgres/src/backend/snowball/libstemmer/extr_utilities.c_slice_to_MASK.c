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
typedef  int /*<<< orphan*/  symbol ;
struct SN_env {int ket; int bra; int p; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC5 (struct SN_env*) ; 

extern symbol * FUNC6(struct SN_env * z, symbol * p) {
    if (FUNC5(z)) {
        FUNC3(p);
        return NULL;
    }
    {
        int len = z->ket - z->bra;
        if (FUNC0(p) < len) {
            p = FUNC2(p, len);
            if (p == NULL)
                return NULL;
        }
        FUNC4(p, z->p + z->bra, len * sizeof(symbol));
        FUNC1(p, len);
    }
    return p;
}