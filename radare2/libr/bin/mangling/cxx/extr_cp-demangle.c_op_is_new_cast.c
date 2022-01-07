
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* op; } ;
struct TYPE_6__ {TYPE_2__ s_operator; } ;
struct demangle_component {TYPE_3__ u; } ;
struct TYPE_4__ {char* code; } ;



__attribute__((used)) static int
op_is_new_cast (struct demangle_component *op)
{
  const char *code = op->u.s_operator.op->code;
  return (code[1] == 'c'
   && (code[0] == 's' || code[0] == 'd'
       || code[0] == 'c' || code[0] == 'r'));
}
