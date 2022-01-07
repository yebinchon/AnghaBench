
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wine_rb_tree {int dummy; } ;
struct ffp_frag_desc {int entry; int settings; } ;


 int ERR (char*) ;
 int wine_rb_put (struct wine_rb_tree*,int *,int *) ;

void add_ffp_frag_shader(struct wine_rb_tree *shaders, struct ffp_frag_desc *desc)
{


    if (wine_rb_put(shaders, &desc->settings, &desc->entry) == -1)
    {
        ERR("Failed to insert ffp frag shader.\n");
    }
}
