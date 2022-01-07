
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int (* match_fn_t ) (int *,int *) ;
struct TYPE_4__ {int * data; struct TYPE_4__* next; } ;
typedef TYPE_1__ list_item_t ;
typedef int * LPVOID ;


 int free (TYPE_1__*) ;

__attribute__((used)) static LPVOID
RemoveListItem(list_item_t **pfirst, match_fn_t match, LPVOID ctx)
{
    LPVOID data = ((void*)0);
    list_item_t **pnext;

    for (pnext = pfirst; *pnext; pnext = &(*pnext)->next)
    {
        list_item_t *item = *pnext;
        if (!match(item->data, ctx))
        {
            continue;
        }


        *pnext = item->next;
        data = item->data;
        free(item);
        break;
    }
    return data;
}
