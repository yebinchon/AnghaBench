#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct wined3d_light_info {int dummy; } ;
struct wined3d_cs_set_light {struct wined3d_light_info light; int /*<<< orphan*/  opcode; } ;
struct wined3d_cs {TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* submit ) (struct wined3d_cs*,int /*<<< orphan*/ ) ;struct wined3d_cs_set_light* (* require_space ) (struct wined3d_cs*,int,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  WINED3D_CS_OP_SET_LIGHT ; 
 int /*<<< orphan*/  WINED3D_CS_QUEUE_DEFAULT ; 
 struct wined3d_cs_set_light* FUNC0 (struct wined3d_cs*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wined3d_cs*,int /*<<< orphan*/ ) ; 

void FUNC2(struct wined3d_cs *cs, const struct wined3d_light_info *light)
{
    struct wined3d_cs_set_light *op;

    op = cs->ops->require_space(cs, sizeof(*op), WINED3D_CS_QUEUE_DEFAULT);
    op->opcode = WINED3D_CS_OP_SET_LIGHT;
    op->light = *light;

    cs->ops->submit(cs, WINED3D_CS_QUEUE_DEFAULT);
}