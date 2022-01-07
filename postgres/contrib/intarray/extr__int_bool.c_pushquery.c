
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* int32 ;
struct TYPE_4__ {int num; TYPE_2__* str; } ;
typedef TYPE_1__ WORKSTATE ;
struct TYPE_5__ {struct TYPE_5__* next; void* val; void* type; } ;
typedef TYPE_2__ NODE ;


 scalar_t__ palloc (int) ;

__attribute__((used)) static void
pushquery(WORKSTATE *state, int32 type, int32 val)
{
 NODE *tmp = (NODE *) palloc(sizeof(NODE));

 tmp->type = type;
 tmp->val = val;
 tmp->next = state->str;
 state->str = tmp;
 state->num++;
}
