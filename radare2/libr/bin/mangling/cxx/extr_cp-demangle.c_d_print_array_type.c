
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct demangle_component {int dummy; } ;
struct d_print_mod {TYPE_1__* mod; int printed; struct d_print_mod* next; } ;
struct d_print_info {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 scalar_t__ DEMANGLE_COMPONENT_ARRAY_TYPE ;
 int d_append_char (struct d_print_info*,char) ;
 int d_append_string (struct d_print_info*,char*) ;
 int * d_left (struct demangle_component*) ;
 int d_print_comp (struct d_print_info*,int,int *) ;
 int d_print_mod_list (struct d_print_info*,int,struct d_print_mod*,int ) ;

__attribute__((used)) static void
d_print_array_type (struct d_print_info *dpi, int options,
                    struct demangle_component *dc,
                    struct d_print_mod *mods)
{
  int need_space;

  need_space = 1;
  if (mods != ((void*)0))
    {
      int need_paren;
      struct d_print_mod *p;

      need_paren = 0;
      for (p = mods; p != ((void*)0); p = p->next)
 {
   if (! p->printed)
     {
       if (p->mod->type == DEMANGLE_COMPONENT_ARRAY_TYPE)
  {
    need_space = 0;
    break;
  }
       else
  {
    need_paren = 1;
    need_space = 1;
    break;
  }
     }
 }

      if (need_paren)
 d_append_string (dpi, " (");

      d_print_mod_list (dpi, options, mods, 0);

      if (need_paren)
 d_append_char (dpi, ')');
    }

  if (need_space)
    d_append_char (dpi, ' ');

  d_append_char (dpi, '[');

  if (d_left (dc) != ((void*)0))
    d_print_comp (dpi, options, d_left (dc));

  d_append_char (dpi, ']');
}
