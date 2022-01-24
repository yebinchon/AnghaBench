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
struct surface_refs {int max_surfaces; int /*<<< orphan*/  num_surfaces; int /*<<< orphan*/  surfaces; } ;
struct priv {int /*<<< orphan*/  queue; } ;
struct mp_image {int dummy; } ;
typedef  scalar_t__ VASurfaceID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ VA_INVALID_ID ; 
 struct mp_image* FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct mp_image*) ; 

__attribute__((used)) static void FUNC3(struct priv *p, struct surface_refs *refs, int dir)
{
    for (int n = 0; n < refs->max_surfaces; n++) {
        struct mp_image *s = FUNC1(p->queue, (1 + n) * dir);
        if (!s)
            break;
        VASurfaceID id = FUNC2(s);
        if (id == VA_INVALID_ID)
            break;
        FUNC0(p, refs->surfaces, refs->num_surfaces, id);
    }
}