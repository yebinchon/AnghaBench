
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum wined3d_sysval_semantic { ____Placeholder_wined3d_sysval_semantic } wined3d_sysval_semantic ;
typedef enum wined3d_decl_usage { ____Placeholder_wined3d_decl_usage } wined3d_decl_usage ;



 int WINED3D_SV_POSITION ;

__attribute__((used)) static enum wined3d_sysval_semantic shader_sysval_semantic_from_usage(enum wined3d_decl_usage usage)
{
    switch (usage)
    {
        case 128:
            return WINED3D_SV_POSITION;
        default:
            return 0;
    }
}
