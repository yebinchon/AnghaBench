
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int member_2; int member_1; int member_0; } ;
typedef int Node ;
typedef TYPE_1__ LastAttnumInfo ;
typedef int ExprState ;


 int ExecPushExprSlots (int *,TYPE_1__*) ;
 int get_last_attnums_walker (int *,TYPE_1__*) ;

__attribute__((used)) static void
ExecInitExprSlots(ExprState *state, Node *node)
{
 LastAttnumInfo info = {0, 0, 0};




 get_last_attnums_walker(node, &info);

 ExecPushExprSlots(state, &info);
}
