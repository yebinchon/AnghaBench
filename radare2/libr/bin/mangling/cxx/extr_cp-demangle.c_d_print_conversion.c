
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demangle_component {scalar_t__ type; } ;
struct d_print_template {struct d_print_template* next; int * template_decl; int member_0; } ;
struct d_print_info {struct d_print_template* templates; int * current_template; } ;


 scalar_t__ DEMANGLE_COMPONENT_TEMPLATE ;
 int d_append_char (struct d_print_info*,char) ;
 char d_last_char (struct d_print_info*) ;
 struct demangle_component* d_left (struct demangle_component*) ;
 int d_print_comp (struct d_print_info*,int,struct demangle_component*) ;
 struct demangle_component* d_right (struct demangle_component*) ;

__attribute__((used)) static void
d_print_conversion (struct d_print_info *dpi, int options,
      struct demangle_component *dc)
{
  struct d_print_template dpt = {0};



  if (dpi->current_template != ((void*)0))
    {
      dpt.next = dpi->templates;
      dpi->templates = &dpt;
      dpt.template_decl = dpi->current_template;
    }

  if (d_left (dc)->type != DEMANGLE_COMPONENT_TEMPLATE)
    {
      d_print_comp (dpi, options, d_left (dc));
      if (dpi->current_template != ((void*)0))
 dpi->templates = dpt.next;
    }
  else
    {
      d_print_comp (dpi, options, d_left (d_left (dc)));




      if (dpi->current_template != ((void*)0))
 dpi->templates = dpt.next;

      if (d_last_char (dpi) == '<')
 d_append_char (dpi, ' ');
      d_append_char (dpi, '<');
      d_print_comp (dpi, options, d_right (d_left (dc)));


      if (d_last_char (dpi) == '>')
 d_append_char (dpi, ' ');
      d_append_char (dpi, '>');
    }
}
