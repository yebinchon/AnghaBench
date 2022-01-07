
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state_list; void* state; } ;
typedef TYPE_1__* PredIterInfo ;
typedef int Node ;
typedef int ListCell ;


 int * lfirst (int *) ;
 scalar_t__ lnext (int ,int *) ;

__attribute__((used)) static Node *
list_next_fn(PredIterInfo info)
{
 ListCell *l = (ListCell *) info->state;
 Node *n;

 if (l == ((void*)0))
  return ((void*)0);
 n = lfirst(l);
 info->state = (void *) lnext(info->state_list, l);
 return n;
}
