
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demangle_component {scalar_t__ type; } ;


 scalar_t__ DEMANGLE_COMPONENT_TEMPLATE_ARGLIST ;
 struct demangle_component* d_left (struct demangle_component*) ;
 struct demangle_component* d_right (struct demangle_component*) ;

__attribute__((used)) static struct demangle_component *
d_index_template_argument (struct demangle_component *args, int i)
{
  struct demangle_component *a;

  if (i < 0)

    return args;

  for (a = args;
       a != ((void*)0);
       a = d_right (a))
    {
      if (a->type != DEMANGLE_COMPONENT_TEMPLATE_ARGLIST)
 return ((void*)0);
      if (i <= 0)
 break;
      --i;
    }
  if (i != 0 || a == ((void*)0))
    return ((void*)0);

  return d_left (a);
}
