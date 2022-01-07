
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demangle_component {int dummy; } ;
struct d_info {int dummy; } ;


 int d_check_char (struct d_info*,char) ;
 int d_compact_number (struct d_info*) ;
 struct demangle_component* d_make_template_param (struct d_info*,int) ;

__attribute__((used)) static struct demangle_component *
d_template_param (struct d_info *di)
{
  int param;

  if (! d_check_char (di, 'T'))
    return ((void*)0);

  param = d_compact_number (di);
  if (param < 0)
    return ((void*)0);

  return d_make_template_param (di, param);
}
