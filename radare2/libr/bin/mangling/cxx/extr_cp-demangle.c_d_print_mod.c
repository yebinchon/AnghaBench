
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demangle_component {int type; } ;
struct d_print_info {int dummy; } ;
 int DMGL_JAVA ;
 int d_append_char (struct d_print_info*,char) ;
 int d_append_string (struct d_print_info*,char*) ;
 char d_last_char (struct d_print_info*) ;
 struct demangle_component* d_left (struct demangle_component*) ;
 int d_print_comp (struct d_print_info*,int,struct demangle_component*) ;
 struct demangle_component* d_right (struct demangle_component*) ;

__attribute__((used)) static void
d_print_mod (struct d_print_info *dpi, int options,
             struct demangle_component *mod)
{
  switch (mod->type)
    {
    case 138:
    case 137:
      d_append_string (dpi, " restrict");
      return;
    case 129:
    case 128:
      d_append_string (dpi, " volatile");
      return;
    case 146:
    case 145:
      d_append_string (dpi, " const");
      return;
    case 133:
      d_append_string (dpi, " transaction_safe");
      return;
    case 143:
      d_append_string (dpi, " noexcept");
      if (d_right (mod))
 {
   d_append_char (dpi, '(');
   d_print_comp (dpi, options, d_right (mod));
   d_append_char (dpi, ')');
 }
      return;
    case 134:
      d_append_string (dpi, " throw");
      if (d_right (mod))
 {
   d_append_char (dpi, '(');
   d_print_comp (dpi, options, d_right (mod));
   d_append_char (dpi, ')');
 }
      return;
    case 130:
      d_append_char (dpi, ' ');
      d_print_comp (dpi, options, d_right (mod));
      return;
    case 142:

      if ((options & DMGL_JAVA) == 0)
 d_append_char (dpi, '*');
      return;
    case 139:

      d_append_char (dpi, ' ');

    case 140:
      d_append_char (dpi, '&');
      return;
    case 135:
      d_append_char (dpi, ' ');

    case 136:
      d_append_string (dpi, "&&");
      return;
    case 147:
      d_append_string (dpi, "complex ");
      return;
    case 144:
      d_append_string (dpi, "imaginary ");
      return;
    case 141:
      if (d_last_char (dpi) != '(')
 d_append_char (dpi, ' ');
      d_print_comp (dpi, options, d_left (mod));
      d_append_string (dpi, "::*");
      return;
    case 132:
      d_print_comp (dpi, options, d_left (mod));
      return;
    case 131:
      d_append_string (dpi, " __vector(");
      d_print_comp (dpi, options, d_left (mod));
      d_append_char (dpi, ')');
      return;

    default:


      d_print_comp (dpi, options, mod);
      return;
    }
}
