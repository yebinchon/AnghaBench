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
struct wined3d_shader_semantic {int usage; int usage_idx; int /*<<< orphan*/  reg; int /*<<< orphan*/  resource_data_type; int /*<<< orphan*/  resource_type; } ;
typedef  enum wined3d_sm1_resource_type { ____Placeholder_wined3d_sm1_resource_type } wined3d_sm1_resource_type ;
typedef  int DWORD ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  WINED3D_DATA_FLOAT ; 
 int /*<<< orphan*/  WINED3D_SHADER_RESOURCE_NONE ; 
 int WINED3D_SM1_DCL_USAGE_INDEX_MASK ; 
 int WINED3D_SM1_DCL_USAGE_INDEX_SHIFT ; 
 int WINED3D_SM1_DCL_USAGE_MASK ; 
 int WINED3D_SM1_DCL_USAGE_SHIFT ; 
 int WINED3D_SM1_RESOURCE_TYPE_MASK ; 
 int WINED3D_SM1_RESOURCE_TYPE_SHIFT ; 
 int /*<<< orphan*/ * resource_type_table ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(const DWORD **ptr, struct wined3d_shader_semantic *semantic)
{
    enum wined3d_sm1_resource_type resource_type;
    DWORD usage_token = *(*ptr)++;
    DWORD dst_token = *(*ptr)++;

    semantic->usage = (usage_token & WINED3D_SM1_DCL_USAGE_MASK) >> WINED3D_SM1_DCL_USAGE_SHIFT;
    semantic->usage_idx = (usage_token & WINED3D_SM1_DCL_USAGE_INDEX_MASK) >> WINED3D_SM1_DCL_USAGE_INDEX_SHIFT;
    resource_type = (usage_token & WINED3D_SM1_RESOURCE_TYPE_MASK) >> WINED3D_SM1_RESOURCE_TYPE_SHIFT;
    if (resource_type >= FUNC0(resource_type_table))
    {
        FUNC1("Unhandled resource type %#x.\n", resource_type);
        semantic->resource_type = WINED3D_SHADER_RESOURCE_NONE;
    }
    else
    {
        semantic->resource_type = resource_type_table[resource_type];
    }
    semantic->resource_data_type = WINED3D_DATA_FLOAT;
    FUNC2(dst_token, NULL, &semantic->reg);
}