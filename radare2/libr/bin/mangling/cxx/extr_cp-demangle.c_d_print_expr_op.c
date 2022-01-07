
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* op; } ;
struct TYPE_6__ {TYPE_2__ s_operator; } ;
struct demangle_component {scalar_t__ type; TYPE_3__ u; } ;
struct d_print_info {int dummy; } ;
struct TYPE_4__ {int len; int name; } ;


 scalar_t__ DEMANGLE_COMPONENT_OPERATOR ;
 int d_append_buffer (struct d_print_info*,int ,int ) ;
 int d_print_comp (struct d_print_info*,int,struct demangle_component*) ;

__attribute__((used)) static void
d_print_expr_op (struct d_print_info *dpi, int options,
                 struct demangle_component *dc)
{
  if (dc->type == DEMANGLE_COMPONENT_OPERATOR)
    d_append_buffer (dpi, dc->u.s_operator.op->name,
       dc->u.s_operator.op->len);
  else
    d_print_comp (dpi, options, dc);
}
