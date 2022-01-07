
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num; struct demangle_component* sub; } ;
struct TYPE_4__ {TYPE_1__ s_unary_num; } ;
struct demangle_component {TYPE_2__ u; int type; } ;
struct d_info {int dummy; } ;


 int DEMANGLE_COMPONENT_LAMBDA ;
 int d_add_substitution (struct d_info*,struct demangle_component*) ;
 int d_check_char (struct d_info*,char) ;
 int d_compact_number (struct d_info*) ;
 struct demangle_component* d_make_empty (struct d_info*) ;
 struct demangle_component* d_parmlist (struct d_info*) ;

__attribute__((used)) static struct demangle_component *
d_lambda (struct d_info *di)
{
  struct demangle_component *tl;
  struct demangle_component *ret;
  int num;

  if (! d_check_char (di, 'U'))
    return ((void*)0);
  if (! d_check_char (di, 'l'))
    return ((void*)0);

  tl = d_parmlist (di);
  if (tl == ((void*)0))
    return ((void*)0);

  if (! d_check_char (di, 'E'))
    return ((void*)0);

  num = d_compact_number (di);
  if (num < 0)
    return ((void*)0);

  ret = d_make_empty (di);
  if (ret)
    {
      ret->type = DEMANGLE_COMPONENT_LAMBDA;
      ret->u.s_unary_num.sub = tl;
      ret->u.s_unary_num.num = num;
    }

  if (! d_add_substitution (di, ret))
    return ((void*)0);

  return ret;
}
