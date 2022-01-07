
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demangle_component {int dummy; } ;
struct d_info {int dummy; } ;


 int d_advance (struct d_info*,int) ;
 char d_peek_char (struct d_info*) ;
 struct demangle_component* d_template_args_1 (struct d_info*) ;

__attribute__((used)) static struct demangle_component *
d_template_args (struct d_info *di)
{
  if (d_peek_char (di) != 'I'
      && d_peek_char (di) != 'J')
    return ((void*)0);
  d_advance (di, 1);

  return d_template_args_1 (di);
}
