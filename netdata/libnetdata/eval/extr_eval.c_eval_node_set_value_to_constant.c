
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int calculated_number ;
struct TYPE_5__ {int count; TYPE_1__* ops; } ;
struct TYPE_4__ {int number; int type; } ;
typedef TYPE_2__ EVAL_NODE ;


 int EVAL_VALUE_NUMBER ;
 int fatal (char*,int,int) ;

__attribute__((used)) static inline void eval_node_set_value_to_constant(EVAL_NODE *op, int pos, calculated_number value) {
    if(pos >= op->count)
        fatal("Invalid request to set position %d of OPERAND that has only %d values", pos + 1, op->count + 1);

    op->ops[pos].type = EVAL_VALUE_NUMBER;
    op->ops[pos].number = value;
}
