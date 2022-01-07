
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {struct demangle_component* name; } ;
struct TYPE_5__ {struct demangle_component* name; } ;
struct TYPE_8__ {struct demangle_component* name; } ;
struct TYPE_7__ {TYPE_2__ s_dtor; TYPE_1__ s_ctor; TYPE_4__ s_extended_operator; } ;
struct demangle_component {int type; TYPE_3__ u; } ;
struct d_print_info {int dummy; } ;
 int DEMANGLE_COMPONENT_TEMPLATE_ARGLIST ;


 struct demangle_component* d_left (struct demangle_component const*) ;
 struct demangle_component* d_lookup_template_argument (struct d_print_info*,struct demangle_component const*) ;
 struct demangle_component* d_right (struct demangle_component const*) ;

__attribute__((used)) static struct demangle_component *
d_find_pack (struct d_print_info *dpi,
      const struct demangle_component *dc)
{
  struct demangle_component *a;
  if (dc == ((void*)0))
    return ((void*)0);

  switch (dc->type)
    {
    case 129:
      a = d_lookup_template_argument (dpi, dc);
      if (a && a->type == DEMANGLE_COMPONENT_TEMPLATE_ARGLIST)
 return a;
      return ((void*)0);

    case 132:
      return ((void*)0);

    case 136:
    case 135:
    case 130:
    case 133:
    case 144:
    case 131:
    case 143:
    case 137:
    case 128:
    case 138:
    case 141:
    case 134:
      return ((void*)0);

    case 139:
      return d_find_pack (dpi, dc->u.s_extended_operator.name);
    case 142:
      return d_find_pack (dpi, dc->u.s_ctor.name);
    case 140:
      return d_find_pack (dpi, dc->u.s_dtor.name);

    default:
      a = d_find_pack (dpi, d_left (dc));
      if (a)
 return a;
      return d_find_pack (dpi, d_right (dc));
    }
}
