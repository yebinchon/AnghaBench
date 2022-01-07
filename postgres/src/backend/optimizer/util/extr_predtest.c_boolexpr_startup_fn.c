
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int args; } ;
struct TYPE_4__ {int state_list; void* state; } ;
typedef TYPE_1__* PredIterInfo ;
typedef int Node ;
typedef TYPE_2__ BoolExpr ;


 scalar_t__ list_head (int ) ;

__attribute__((used)) static void
boolexpr_startup_fn(Node *clause, PredIterInfo info)
{
 info->state_list = ((BoolExpr *) clause)->args;
 info->state = (void *) list_head(info->state_list);
}
