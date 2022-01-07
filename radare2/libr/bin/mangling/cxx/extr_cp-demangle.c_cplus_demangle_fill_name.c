
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {char const* s; int len; } ;
struct TYPE_3__ {TYPE_2__ s_name; } ;
struct demangle_component {TYPE_1__ u; int type; scalar_t__ d_printing; } ;


 int DEMANGLE_COMPONENT_NAME ;

int
cplus_demangle_fill_name (struct demangle_component *p, const char *s, int len)
{
  if (p == ((void*)0) || s == ((void*)0) || len == 0)
    return 0;
  p->d_printing = 0;
  p->type = DEMANGLE_COMPONENT_NAME;
  p->u.s_name.s = s;
  p->u.s_name.len = len;
  return 1;
}
