
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data; struct TYPE_4__* next; } ;
typedef TYPE_1__ list_item_t ;
typedef int LPVOID ;
typedef int DWORD ;


 int ERROR_OUTOFMEMORY ;
 int NO_ERROR ;
 TYPE_1__* malloc (int) ;

__attribute__((used)) static DWORD
AddListItem(list_item_t **pfirst, LPVOID data)
{
    list_item_t *new_item = malloc(sizeof(list_item_t));
    if (new_item == ((void*)0))
    {
        return ERROR_OUTOFMEMORY;
    }

    new_item->next = *pfirst;
    new_item->data = data;

    *pfirst = new_item;
    return NO_ERROR;
}
