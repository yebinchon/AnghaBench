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
struct wined3d_matrix {int dummy; } ;
struct wined3d_cs_set_transform {int state; struct wined3d_matrix matrix; int /*<<< orphan*/  opcode; } ;
struct wined3d_cs {TYPE_1__* ops; } ;
typedef  enum wined3d_transform_state { ____Placeholder_wined3d_transform_state } wined3d_transform_state ;
struct TYPE_2__ {int /*<<< orphan*/  (* submit ) (struct wined3d_cs*,int /*<<< orphan*/ ) ;struct wined3d_cs_set_transform* (* require_space ) (struct wined3d_cs*,int,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  WINED3D_CS_OP_SET_TRANSFORM ; 
 int /*<<< orphan*/  WINED3D_CS_QUEUE_DEFAULT ; 
 struct wined3d_cs_set_transform* FUNC0 (struct wined3d_cs*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wined3d_cs*,int /*<<< orphan*/ ) ; 

void FUNC2(struct wined3d_cs *cs, enum wined3d_transform_state state,
        const struct wined3d_matrix *matrix)
{
    struct wined3d_cs_set_transform *op;

    op = cs->ops->require_space(cs, sizeof(*op), WINED3D_CS_QUEUE_DEFAULT);
    op->opcode = WINED3D_CS_OP_SET_TRANSFORM;
    op->state = state;
    op->matrix = *matrix;

    cs->ops->submit(cs, WINED3D_CS_QUEUE_DEFAULT);
}