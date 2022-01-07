
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int contains_outer; } ;
typedef TYPE_2__ reduce_outer_joins_state ;
struct TYPE_10__ {TYPE_1__* parse; } ;
struct TYPE_8__ {scalar_t__ jointree; } ;
typedef TYPE_3__ PlannerInfo ;
typedef int Node ;


 int ERROR ;
 int NIL ;
 int elog (int ,char*) ;
 TYPE_2__* reduce_outer_joins_pass1 (int *) ;
 int reduce_outer_joins_pass2 (int *,TYPE_2__*,TYPE_3__*,int *,int ,int ) ;

void
reduce_outer_joins(PlannerInfo *root)
{
 reduce_outer_joins_state *state;
 state = reduce_outer_joins_pass1((Node *) root->parse->jointree);


 if (state == ((void*)0) || !state->contains_outer)
  elog(ERROR, "so where are the outer joins?");

 reduce_outer_joins_pass2((Node *) root->parse->jointree,
        state, root, ((void*)0), NIL, NIL);
}
