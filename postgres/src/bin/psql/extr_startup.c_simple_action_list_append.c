
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef enum _actions { ____Placeholder__actions } _actions ;
struct TYPE_5__ {TYPE_1__* tail; TYPE_1__* head; } ;
struct TYPE_4__ {int action; struct TYPE_4__* next; int * val; } ;
typedef TYPE_1__ SimpleActionListCell ;
typedef TYPE_2__ SimpleActionList ;


 scalar_t__ pg_malloc (int) ;
 int * pg_strdup (char const*) ;

__attribute__((used)) static void
simple_action_list_append(SimpleActionList *list,
        enum _actions action, const char *val)
{
 SimpleActionListCell *cell;

 cell = (SimpleActionListCell *) pg_malloc(sizeof(SimpleActionListCell));

 cell->next = ((void*)0);
 cell->action = action;
 if (val)
  cell->val = pg_strdup(val);
 else
  cell->val = ((void*)0);

 if (list->tail)
  list->tail->next = cell;
 else
  list->head = cell;
 list->tail = cell;
}
