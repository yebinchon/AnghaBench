
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum wined3d_decl_usage { ____Placeholder_wined3d_decl_usage } wined3d_decl_usage ;


 int ARRAY_SIZE (char const**) ;
 int FIXME (char*,int) ;
 char const** semantic_names ;

__attribute__((used)) static const char *shader_semantic_name_from_usage(enum wined3d_decl_usage usage)
{
    if (usage >= ARRAY_SIZE(semantic_names))
    {
        FIXME("Unrecognized usage %#x.\n", usage);
        return "UNRECOGNIZED";
    }

    return semantic_names[usage];
}
