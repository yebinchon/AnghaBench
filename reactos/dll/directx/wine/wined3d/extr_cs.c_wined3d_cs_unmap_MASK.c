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
struct wined3d_resource {int dummy; } ;
struct wined3d_cs_unmap {unsigned int sub_resource_idx; int /*<<< orphan*/ * hr; struct wined3d_resource* resource; int /*<<< orphan*/  opcode; } ;
struct wined3d_cs {TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* finish ) (struct wined3d_cs*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* submit ) (struct wined3d_cs*,int /*<<< orphan*/ ) ;struct wined3d_cs_unmap* (* require_space ) (struct wined3d_cs*,int,int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  WINED3D_CS_OP_UNMAP ; 
 int /*<<< orphan*/  WINED3D_CS_QUEUE_MAP ; 
 struct wined3d_cs_unmap* FUNC0 (struct wined3d_cs*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wined3d_cs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wined3d_cs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wined3d_cs*) ; 

HRESULT FUNC4(struct wined3d_cs *cs, struct wined3d_resource *resource, unsigned int sub_resource_idx)
{
    struct wined3d_cs_unmap *op;
    HRESULT hr;

    FUNC3(cs);

    op = cs->ops->require_space(cs, sizeof(*op), WINED3D_CS_QUEUE_MAP);
    op->opcode = WINED3D_CS_OP_UNMAP;
    op->resource = resource;
    op->sub_resource_idx = sub_resource_idx;
    op->hr = &hr;

    cs->ops->submit(cs, WINED3D_CS_QUEUE_MAP);
    cs->ops->finish(cs, WINED3D_CS_QUEUE_MAP);

    return hr;
}