
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum wined3d_decl_usage { ____Placeholder_wined3d_decl_usage } wined3d_decl_usage ;


 unsigned int ARRAY_SIZE (int *) ;
 int * semantic_names ;
 int strcmp (char const*,int ) ;

__attribute__((used)) static enum wined3d_decl_usage shader_usage_from_semantic_name(const char *name)
{
    unsigned int i;

    for (i = 0; i < ARRAY_SIZE(semantic_names); ++i)
    {
        if (!strcmp(name, semantic_names[i]))
            return i;
    }

    return ~0U;
}
