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
struct wined3d_unordered_access_view {int /*<<< orphan*/ * resource; } ;
struct wined3d_cs_copy_uav_counter {unsigned int offset; struct wined3d_unordered_access_view* view; struct wined3d_buffer* buffer; int /*<<< orphan*/  opcode; } ;
struct wined3d_cs {TYPE_1__* ops; } ;
struct wined3d_buffer {int /*<<< orphan*/  resource; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* submit ) (struct wined3d_cs*,int /*<<< orphan*/ ) ;struct wined3d_cs_copy_uav_counter* (* require_space ) (struct wined3d_cs*,int,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  WINED3D_CS_OP_COPY_UAV_COUNTER ; 
 int /*<<< orphan*/  WINED3D_CS_QUEUE_DEFAULT ; 
 struct wined3d_cs_copy_uav_counter* FUNC0 (struct wined3d_cs*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wined3d_cs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct wined3d_cs *cs, struct wined3d_buffer *dst_buffer,
        unsigned int offset, struct wined3d_unordered_access_view *uav)
{
    struct wined3d_cs_copy_uav_counter *op;

    op = cs->ops->require_space(cs, sizeof(*op), WINED3D_CS_QUEUE_DEFAULT);
    op->opcode = WINED3D_CS_OP_COPY_UAV_COUNTER;
    op->buffer = dst_buffer;
    op->offset = offset;
    op->view = uav;

    FUNC2(&dst_buffer->resource);
    FUNC2(uav->resource);

    cs->ops->submit(cs, WINED3D_CS_QUEUE_DEFAULT);
}