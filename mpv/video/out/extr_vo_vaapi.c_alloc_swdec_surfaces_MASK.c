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
struct priv {int /*<<< orphan*/ * swdec_surfaces; int /*<<< orphan*/  pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  IMGFMT_VAAPI ; 
 int MAX_OUTPUT_SURFACES ; 
 int /*<<< orphan*/  FUNC0 (struct priv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC2 (struct priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool FUNC3(struct priv *p, int w, int h, int imgfmt)
{
    FUNC0(p);
    for (int i = 0; i < MAX_OUTPUT_SURFACES; i++) {
        p->swdec_surfaces[i] = FUNC1(p->pool, IMGFMT_VAAPI, w, h);
        if (FUNC2(p, p->swdec_surfaces[i], imgfmt) < 0)
            return false;
    }
    return true;
}