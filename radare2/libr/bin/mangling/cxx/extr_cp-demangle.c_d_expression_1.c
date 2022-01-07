
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int args; } ;
struct TYPE_6__ {TYPE_1__* op; } ;
struct TYPE_8__ {TYPE_3__ s_extended_operator; TYPE_2__ s_operator; } ;
struct demangle_component {int type; TYPE_4__ u; } ;
struct d_info {int expansion; } ;
struct TYPE_5__ {char* code; int len; int args; } ;


 int DEMANGLE_COMPONENT_BINARY ;
 int DEMANGLE_COMPONENT_BINARY_ARGS ;


 int DEMANGLE_COMPONENT_INITIALIZER_LIST ;
 int DEMANGLE_COMPONENT_NULLARY ;

 int DEMANGLE_COMPONENT_PACK_EXPANSION ;
 int DEMANGLE_COMPONENT_QUAL_NAME ;
 int DEMANGLE_COMPONENT_TEMPLATE ;
 int DEMANGLE_COMPONENT_TRINARY ;
 int DEMANGLE_COMPONENT_TRINARY_ARG1 ;
 int DEMANGLE_COMPONENT_TRINARY_ARG2 ;
 int DEMANGLE_COMPONENT_UNARY ;
 int INT_MAX ;
 scalar_t__ IS_DIGIT (char) ;
 struct demangle_component* cplus_demangle_type (struct d_info*) ;
 int d_advance (struct d_info*,int) ;
 int d_check_char (struct d_info*,char) ;
 int d_compact_number (struct d_info*) ;
 struct demangle_component* d_expr_primary (struct d_info*) ;
 struct demangle_component* d_exprlist (struct d_info*,char) ;
 struct demangle_component* d_make_comp (struct d_info*,int ,struct demangle_component*,struct demangle_component*) ;
 struct demangle_component* d_make_function_param (struct d_info*,int) ;
 struct demangle_component* d_operator_name (struct d_info*) ;
 char d_peek_char (struct d_info*) ;
 char d_peek_next_char (struct d_info*) ;
 struct demangle_component* d_template_args (struct d_info*) ;
 struct demangle_component* d_template_args_1 (struct d_info*) ;
 struct demangle_component* d_template_param (struct d_info*) ;
 struct demangle_component* d_unqualified_name (struct d_info*) ;
 int op_is_new_cast (struct demangle_component*) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static inline struct demangle_component *
d_expression_1 (struct d_info *di)
{
  char peek;

  peek = d_peek_char (di);
  if (peek == 'L')
    return d_expr_primary (di);
  else if (peek == 'T')
    return d_template_param (di);
  else if (peek == 's' && d_peek_next_char (di) == 'r')
    {
      struct demangle_component *type;
      struct demangle_component *name;

      d_advance (di, 2);
      type = cplus_demangle_type (di);
      name = d_unqualified_name (di);
      if (d_peek_char (di) != 'I')
 return d_make_comp (di, DEMANGLE_COMPONENT_QUAL_NAME, type, name);
      else
 return d_make_comp (di, DEMANGLE_COMPONENT_QUAL_NAME, type,
       d_make_comp (di, DEMANGLE_COMPONENT_TEMPLATE, name,
      d_template_args (di)));
    }
  else if (peek == 's' && d_peek_next_char (di) == 'p')
    {
      d_advance (di, 2);
      return d_make_comp (di, DEMANGLE_COMPONENT_PACK_EXPANSION,
     d_expression_1 (di), ((void*)0));
    }
  else if (peek == 'f' && d_peek_next_char (di) == 'p')
    {

      int index;
      d_advance (di, 2);
      if (d_peek_char (di) == 'T')
 {

   d_advance (di, 1);
   index = 0;
 }
      else
 {
   index = d_compact_number (di);
   if (index == INT_MAX || index == -1)
     return ((void*)0);
   index++;
 }
      return d_make_function_param (di, index);
    }
  else if (IS_DIGIT (peek)
    || (peek == 'o' && d_peek_next_char (di) == 'n'))
    {


      struct demangle_component *name;

      if (peek == 'o')

 d_advance (di, 2);

      name = d_unqualified_name (di);
      if (name == ((void*)0))
 return ((void*)0);
      if (d_peek_char (di) == 'I')
 return d_make_comp (di, DEMANGLE_COMPONENT_TEMPLATE, name,
       d_template_args (di));
      else
 return name;
    }
  else if ((peek == 'i' || peek == 't')
    && d_peek_next_char (di) == 'l')
    {

      struct demangle_component *type = ((void*)0);
      d_advance (di, 2);
      if (peek == 't')
 type = cplus_demangle_type (di);
      if (!d_peek_next_char (di))
 return ((void*)0);
      return d_make_comp (di, DEMANGLE_COMPONENT_INITIALIZER_LIST,
     type, d_exprlist (di, 'E'));
    }
  else
    {
      struct demangle_component *op;
      const char *code = ((void*)0);
      int args;

      op = d_operator_name (di);
      if (op == ((void*)0))
 return ((void*)0);

      if (op->type == 128)
 {
   code = op->u.s_operator.op->code;
   di->expansion += op->u.s_operator.op->len - 2;
   if (strcmp (code, "st") == 0)
     return d_make_comp (di, DEMANGLE_COMPONENT_UNARY, op,
    cplus_demangle_type (di));
 }

      switch (op->type)
 {
 default:
   return ((void*)0);
 case 128:
   args = op->u.s_operator.op->args;
   break;
 case 129:
   args = op->u.s_extended_operator.args;
   break;
 case 130:
   args = 1;
   break;
 }

      switch (args)
 {
 case 0:
   return d_make_comp (di, DEMANGLE_COMPONENT_NULLARY, op, ((void*)0));

 case 1:
   {
     struct demangle_component *operand;
     int suffix = 0;

     if (code && (code[0] == 'p' || code[0] == 'm')
  && code[1] == code[0])

       suffix = !d_check_char (di, '_');

     if (op->type == 130
  && d_check_char (di, '_'))
       operand = d_exprlist (di, 'E');
     else if (code && !strcmp (code, "sP"))
       operand = d_template_args_1 (di);
     else
       operand = d_expression_1 (di);

     if (suffix)

       operand = d_make_comp (di, DEMANGLE_COMPONENT_BINARY_ARGS,
         operand, operand);

     return d_make_comp (di, DEMANGLE_COMPONENT_UNARY, op, operand);
   }
 case 2:
   {
     struct demangle_component *left;
     struct demangle_component *right;

     if (code == ((void*)0))
       return ((void*)0);
     if (op_is_new_cast (op))
       left = cplus_demangle_type (di);
     else if (code[0] == 'f')

       left = d_operator_name (di);
     else
       left = d_expression_1 (di);
     if (!strcmp (code, "cl"))
       right = d_exprlist (di, 'E');
     else if (!strcmp (code, "dt") || !strcmp (code, "pt"))
       {
  right = d_unqualified_name (di);
  if (d_peek_char (di) == 'I')
    right = d_make_comp (di, DEMANGLE_COMPONENT_TEMPLATE,
           right, d_template_args (di));
       }
     else
       right = d_expression_1 (di);

     return d_make_comp (di, DEMANGLE_COMPONENT_BINARY, op,
    d_make_comp (di,
          DEMANGLE_COMPONENT_BINARY_ARGS,
          left, right));
   }
 case 3:
   {
     struct demangle_component *first;
     struct demangle_component *second;
     struct demangle_component *third;

     if (code == ((void*)0))
       return ((void*)0);
     else if (!strcmp (code, "qu"))
       {

  first = d_expression_1 (di);
  second = d_expression_1 (di);
  third = d_expression_1 (di);
  if (third == ((void*)0))
    return ((void*)0);
       }
     else if (code[0] == 'f')
       {

  first = d_operator_name (di);
  second = d_expression_1 (di);
  third = d_expression_1 (di);
  if (third == ((void*)0))
    return ((void*)0);
       }
     else if (code[0] == 'n')
       {

  if (code[1] != 'w' && code[1] != 'a')
    return ((void*)0);
  first = d_exprlist (di, '_');
  second = cplus_demangle_type (di);
  if (d_peek_char (di) == 'E')
    {
      d_advance (di, 1);
      third = ((void*)0);
    }
  else if (d_peek_char (di) == 'p'
    && d_peek_next_char (di) == 'i')
    {

      d_advance (di, 2);
      third = d_exprlist (di, 'E');
    }
  else if (d_peek_char (di) == 'i'
    && d_peek_next_char (di) == 'l')

    third = d_expression_1 (di);
  else
    return ((void*)0);
       }
     else
       return ((void*)0);
     return d_make_comp (di, DEMANGLE_COMPONENT_TRINARY, op,
    d_make_comp (di,
          DEMANGLE_COMPONENT_TRINARY_ARG1,
          first,
          d_make_comp (di,
         DEMANGLE_COMPONENT_TRINARY_ARG2,
         second, third)));
   }
 default:
   return ((void*)0);
 }
    }
}
