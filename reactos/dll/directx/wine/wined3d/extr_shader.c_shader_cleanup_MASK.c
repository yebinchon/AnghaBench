#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_9__ ;
typedef  struct TYPE_25__   TYPE_8__ ;
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_13__ ;
typedef  struct TYPE_16__   TYPE_12__ ;
typedef  struct TYPE_15__   TYPE_11__ ;
typedef  struct TYPE_14__   TYPE_10__ ;

/* Type definitions */
struct TYPE_20__ {scalar_t__ type; } ;
struct TYPE_17__ {TYPE_3__ shader_version; } ;
struct TYPE_26__ {int /*<<< orphan*/  elements; } ;
struct TYPE_25__ {int /*<<< orphan*/  elements; } ;
struct TYPE_24__ {int /*<<< orphan*/  elements; } ;
struct TYPE_21__ {int /*<<< orphan*/  elements; } ;
struct TYPE_22__ {TYPE_4__ so_desc; } ;
struct TYPE_18__ {int /*<<< orphan*/  join; int /*<<< orphan*/  fork; int /*<<< orphan*/  control_point; } ;
struct TYPE_19__ {TYPE_1__ phases; } ;
struct TYPE_23__ {TYPE_5__ gs; TYPE_2__ hs; } ;
struct wined3d_shader {scalar_t__ frontend_data; TYPE_12__* frontend; int /*<<< orphan*/  shader_list_entry; int /*<<< orphan*/  constantsI; int /*<<< orphan*/  constantsB; int /*<<< orphan*/  constantsF; int /*<<< orphan*/  function; TYPE_13__ reg_maps; TYPE_11__* device; int /*<<< orphan*/  signature_strings; TYPE_9__ input_signature; TYPE_8__ output_signature; TYPE_7__ patch_constant_signature; TYPE_6__ u; } ;
struct TYPE_16__ {int /*<<< orphan*/  (* shader_free ) (scalar_t__) ;} ;
struct TYPE_15__ {TYPE_10__* shader_backend; } ;
struct TYPE_14__ {int /*<<< orphan*/  (* shader_destroy ) (struct wined3d_shader*) ;} ;

/* Variables and functions */
 scalar_t__ WINED3D_SHADER_TYPE_GEOMETRY ; 
 scalar_t__ WINED3D_SHADER_TYPE_HULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_13__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct wined3d_shader*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct wined3d_shader *shader)
{
    if (shader->reg_maps.shader_version.type == WINED3D_SHADER_TYPE_HULL)
    {
        FUNC0(shader->u.hs.phases.control_point);
        FUNC0(shader->u.hs.phases.fork);
        FUNC0(shader->u.hs.phases.join);
    }
    else if (shader->reg_maps.shader_version.type == WINED3D_SHADER_TYPE_GEOMETRY)
    {
        FUNC0(shader->u.gs.so_desc.elements);
    }

    FUNC0(shader->patch_constant_signature.elements);
    FUNC0(shader->output_signature.elements);
    FUNC0(shader->input_signature.elements);
    FUNC0(shader->signature_strings);
    shader->device->shader_backend->shader_destroy(shader);
    FUNC2(&shader->reg_maps);
    FUNC0(shader->function);
    FUNC3(&shader->constantsF);
    FUNC3(&shader->constantsB);
    FUNC3(&shader->constantsI);
    FUNC1(&shader->shader_list_entry);

    if (shader->frontend && shader->frontend_data)
        shader->frontend->shader_free(shader->frontend_data);
}