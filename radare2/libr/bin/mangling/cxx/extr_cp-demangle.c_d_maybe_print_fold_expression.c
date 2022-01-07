
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
struct d_print_info {int pack_index; } ;
struct TYPE_4__ {char* code; } ;


 scalar_t__ DEMANGLE_COMPONENT_TRINARY_ARG2 ;
 int d_append_char (struct d_print_info*,char) ;
 int d_append_string (struct d_print_info*,char*) ;
 struct demangle_component* d_left (struct demangle_component*) ;
 int d_print_expr_op (struct d_print_info*,int,struct demangle_component*) ;
 int d_print_subexpr (struct d_print_info*,int,struct demangle_component*) ;
 struct demangle_component* d_right (struct demangle_component*) ;

__attribute__((used)) static int
d_maybe_print_fold_expression (struct d_print_info *dpi, int options,
          struct demangle_component *dc)
{
  struct demangle_component *ops, *operator_, *op1, *op2;
  int save_idx;

  const char *fold_code = d_left (dc)->u.s_operator.op->code;
  if (fold_code[0] != 'f')
    return 0;

  ops = d_right (dc);
  operator_ = d_left (ops);
  op1 = d_right (ops);
  op2 = 0;
  if (op1->type == DEMANGLE_COMPONENT_TRINARY_ARG2)
    {
      op2 = d_right (op1);
      op1 = d_left (op1);
    }


  save_idx = dpi->pack_index;
  dpi->pack_index = -1;

  switch (fold_code[1])
    {

    case 'l':
      d_append_string (dpi, "(...");
      d_print_expr_op (dpi, options, operator_);
      d_print_subexpr (dpi, options, op1);
      d_append_char (dpi, ')');
      break;


    case 'r':
      d_append_char (dpi, '(');
      d_print_subexpr (dpi, options, op1);
      d_print_expr_op (dpi, options, operator_);
      d_append_string (dpi, "...)");
      break;


    case 'L':

    case 'R':
      d_append_char (dpi, '(');
      d_print_subexpr (dpi, options, op1);
      d_print_expr_op (dpi, options, operator_);
      d_append_string (dpi, "...");
      d_print_expr_op (dpi, options, operator_);
      d_print_subexpr (dpi, options, op2);
      d_append_char (dpi, ')');
      break;
    }

  dpi->pack_index = save_idx;
  return 1;
}
