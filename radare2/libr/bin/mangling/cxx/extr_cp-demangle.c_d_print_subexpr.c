
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demangle_component {scalar_t__ type; } ;
struct d_print_info {int dummy; } ;


 scalar_t__ DEMANGLE_COMPONENT_FUNCTION_PARAM ;
 scalar_t__ DEMANGLE_COMPONENT_INITIALIZER_LIST ;
 scalar_t__ DEMANGLE_COMPONENT_NAME ;
 scalar_t__ DEMANGLE_COMPONENT_QUAL_NAME ;
 int d_append_char (struct d_print_info*,char) ;
 int d_print_comp (struct d_print_info*,int,struct demangle_component*) ;

__attribute__((used)) static void
d_print_subexpr (struct d_print_info *dpi, int options,
   struct demangle_component *dc)
{
  int simple = 0;
  if (dc && (dc->type == DEMANGLE_COMPONENT_NAME
      || dc->type == DEMANGLE_COMPONENT_QUAL_NAME
      || dc->type == DEMANGLE_COMPONENT_INITIALIZER_LIST
      || dc->type == DEMANGLE_COMPONENT_FUNCTION_PARAM))
    simple = 1;
  if (!simple)
    d_append_char (dpi, '(');
  d_print_comp (dpi, options, dc);
  if (!simple)
    d_append_char (dpi, ')');
}
