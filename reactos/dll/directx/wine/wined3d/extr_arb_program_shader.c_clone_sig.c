
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_shader_signature {unsigned int element_count; TYPE_1__* elements; } ;
struct TYPE_2__ {char* semantic_name; } ;


 char* heap_alloc (scalar_t__) ;
 TYPE_1__* heap_calloc (unsigned int,int) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void clone_sig(struct wined3d_shader_signature *new, const struct wined3d_shader_signature *sig)
{
    unsigned int i;
    char *name;

    new->element_count = sig->element_count;
    new->elements = heap_calloc(new->element_count, sizeof(*new->elements));
    for (i = 0; i < sig->element_count; ++i)
    {
        new->elements[i] = sig->elements[i];

        if (!new->elements[i].semantic_name)
            continue;


        name = heap_alloc(strlen(sig->elements[i].semantic_name) + 1);
        strcpy(name, sig->elements[i].semantic_name);
        new->elements[i].semantic_name = name;
    }
}
