
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int number; } ;
struct TYPE_4__ {TYPE_1__ s_number; } ;
struct demangle_component {TYPE_2__ u; int type; } ;
struct d_info {int dummy; } ;


 int DEMANGLE_COMPONENT_NUMBER ;
 struct demangle_component* d_make_empty (struct d_info*) ;
 int d_number (struct d_info*) ;

__attribute__((used)) static struct demangle_component *
d_number_component (struct d_info *di)
{
  struct demangle_component *ret = d_make_empty (di);
  if (ret)
    {
      ret->type = DEMANGLE_COMPONENT_NUMBER;
      ret->u.s_number.number = d_number (di);
    }
  return ret;
}
