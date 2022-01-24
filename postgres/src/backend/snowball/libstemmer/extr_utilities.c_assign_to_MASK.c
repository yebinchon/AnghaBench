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
struct SN_env {int l; int /*<<< orphan*/  p; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

extern symbol * FUNC4(struct SN_env * z, symbol * p) {
    int len = z->l;
    if (FUNC0(p) < len) {
        p = FUNC2(p, len);
        if (p == NULL)
            return NULL;
    }
    FUNC3(p, z->p, len * sizeof(symbol));
    FUNC1(p, len);
    return p;
}