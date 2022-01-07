
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int count; int precedence; int operator; int id; } ;
typedef int EVAL_VALUE ;
typedef TYPE_1__ EVAL_NODE ;


 int EVAL_OPERATOR_NOP ;
 TYPE_1__* callocz (int,int) ;
 int eval_precedence (int ) ;

__attribute__((used)) static inline EVAL_NODE *eval_node_alloc(int count) {
    static int id = 1;

    EVAL_NODE *op = callocz(1, sizeof(EVAL_NODE) + (sizeof(EVAL_VALUE) * count));

    op->id = id++;
    op->operator = EVAL_OPERATOR_NOP;
    op->precedence = eval_precedence(EVAL_OPERATOR_NOP);
    op->count = count;
    return op;
}
