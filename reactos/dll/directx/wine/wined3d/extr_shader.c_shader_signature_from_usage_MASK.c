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
struct wined3d_shader_signature_element {int /*<<< orphan*/  mask; void* register_idx; int /*<<< orphan*/  component_type; int /*<<< orphan*/  sysval_semantic; scalar_t__ stream_idx; void* semantic_idx; int /*<<< orphan*/  semantic_name; } ;
typedef  enum wined3d_decl_usage { ____Placeholder_wined3d_decl_usage } wined3d_decl_usage ;
typedef  void* UINT ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  WINED3D_TYPE_FLOAT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(struct wined3d_shader_signature_element *e,
        enum wined3d_decl_usage usage, UINT usage_idx, UINT reg_idx, DWORD write_mask)
{
    e->semantic_name = FUNC0(usage);
    e->semantic_idx = usage_idx;
    e->stream_idx = 0;
    e->sysval_semantic = FUNC1(usage);
    e->component_type = WINED3D_TYPE_FLOAT;
    e->register_idx = reg_idx;
    e->mask = write_mask;
}