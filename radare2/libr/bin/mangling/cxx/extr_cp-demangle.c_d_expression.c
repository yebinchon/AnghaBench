
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demangle_component {int dummy; } ;
struct d_info {int is_expression; } ;


 struct demangle_component* d_expression_1 (struct d_info*) ;

__attribute__((used)) static struct demangle_component *
d_expression (struct d_info *di)
{
  struct demangle_component *ret;
  int was_expression = di->is_expression;

  di->is_expression = 1;
  ret = d_expression_1 (di);
  di->is_expression = was_expression;
  return ret;
}
