
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demangle_component {scalar_t__ type; } ;


 scalar_t__ DEMANGLE_COMPONENT_TEMPLATE_ARGLIST ;
 int * d_left (struct demangle_component const*) ;
 struct demangle_component* d_right (struct demangle_component const*) ;

__attribute__((used)) static int
d_pack_length (const struct demangle_component *dc)
{
  int count = 0;
  while (dc && dc->type == DEMANGLE_COMPONENT_TEMPLATE_ARGLIST
  && d_left (dc) != ((void*)0))
    {
      ++count;
      dc = d_right (dc);
    }
  return count;
}
