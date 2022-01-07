
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_shader_signature_element {int mask; void* register_idx; int component_type; int sysval_semantic; scalar_t__ stream_idx; void* semantic_idx; int semantic_name; } ;
typedef enum wined3d_decl_usage { ____Placeholder_wined3d_decl_usage } wined3d_decl_usage ;
typedef void* UINT ;
typedef int DWORD ;


 int WINED3D_TYPE_FLOAT ;
 int shader_semantic_name_from_usage (int) ;
 int shader_sysval_semantic_from_usage (int) ;

__attribute__((used)) static void shader_signature_from_usage(struct wined3d_shader_signature_element *e,
        enum wined3d_decl_usage usage, UINT usage_idx, UINT reg_idx, DWORD write_mask)
{
    e->semantic_name = shader_semantic_name_from_usage(usage);
    e->semantic_idx = usage_idx;
    e->stream_idx = 0;
    e->sysval_semantic = shader_sysval_semantic_from_usage(usage);
    e->component_type = WINED3D_TYPE_FLOAT;
    e->register_idx = reg_idx;
    e->mask = write_mask;
}
