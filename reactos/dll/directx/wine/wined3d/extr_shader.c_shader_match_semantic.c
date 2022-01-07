
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum wined3d_decl_usage { ____Placeholder_wined3d_decl_usage } wined3d_decl_usage ;
typedef int BOOL ;


 int shader_semantic_name_from_usage (int) ;
 int strcmp (char const*,int ) ;

BOOL shader_match_semantic(const char *semantic_name, enum wined3d_decl_usage usage)
{
    return !strcmp(semantic_name, shader_semantic_name_from_usage(usage));
}
