#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ type; } ;
struct wined3d_light_info {int glIndex; unsigned int OriginalIndex; int /*<<< orphan*/  cutoff; int /*<<< orphan*/  exponent; int /*<<< orphan*/  direction; int /*<<< orphan*/  position; TYPE_1__ OriginalParms; int /*<<< orphan*/  entry; } ;
struct TYPE_5__ {unsigned int OriginalIndex; int /*<<< orphan*/  cutoff; int /*<<< orphan*/  exponent; int /*<<< orphan*/  direction; int /*<<< orphan*/  position; TYPE_1__ OriginalParms; } ;
struct wined3d_cs_set_light {TYPE_2__ light; } ;
struct TYPE_6__ {int /*<<< orphan*/ * light_map; } ;
struct wined3d_cs {int /*<<< orphan*/  device; TYPE_3__ state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 unsigned int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  STATE_LIGHT_TYPE ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct wined3d_light_info* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct wined3d_light_info* FUNC7 (TYPE_3__*,unsigned int) ; 

__attribute__((used)) static void FUNC8(struct wined3d_cs *cs, const void *data)
{
    const struct wined3d_cs_set_light *op = data;
    struct wined3d_light_info *light_info;
    unsigned int light_idx, hash_idx;

    light_idx = op->light.OriginalIndex;

    if (!(light_info = FUNC7(&cs->state, light_idx)))
    {
        FUNC3("Adding new light.\n");
        if (!(light_info = FUNC5(sizeof(*light_info))))
        {
            FUNC0("Failed to allocate light info.\n");
            return;
        }

        hash_idx = FUNC1(light_idx);
        FUNC6(&cs->state.light_map[hash_idx], &light_info->entry);
        light_info->glIndex = -1;
        light_info->OriginalIndex = light_idx;
    }

    if (light_info->glIndex != -1)
    {
        if (light_info->OriginalParms.type != op->light.OriginalParms.type)
            FUNC4(cs->device, STATE_LIGHT_TYPE);
        FUNC4(cs->device, FUNC2(light_info->glIndex));
    }

    light_info->OriginalParms = op->light.OriginalParms;
    light_info->position = op->light.position;
    light_info->direction = op->light.direction;
    light_info->exponent = op->light.exponent;
    light_info->cutoff = op->light.cutoff;
}