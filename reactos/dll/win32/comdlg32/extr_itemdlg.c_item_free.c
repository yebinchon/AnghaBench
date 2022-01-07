
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* label; int hwnd; } ;
typedef TYPE_1__ cctrl_item ;


 int DestroyWindow (int ) ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_1__*) ;

__attribute__((used)) static void item_free(cctrl_item *item)
{
    DestroyWindow(item->hwnd);
    HeapFree(GetProcessHeap(), 0, item->label);
    HeapFree(GetProcessHeap(), 0, item);
}
