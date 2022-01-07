
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * state_list; void* state; } ;
typedef TYPE_1__* PredIterInfo ;
typedef int Node ;
typedef int List ;


 scalar_t__ list_head (int *) ;

__attribute__((used)) static void
list_startup_fn(Node *clause, PredIterInfo info)
{
 info->state_list = (List *) clause;
 info->state = (void *) list_head(info->state_list);
}
