
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int first_macro; struct TYPE_4__* next; } ;
typedef TYPE_1__ HLPFILE_PAGE ;


 int GetProcessHeap () ;
 int HLPFILE_DeleteMacro (int ) ;
 int HeapFree (int ,int ,TYPE_1__*) ;

__attribute__((used)) static void HLPFILE_DeletePage(HLPFILE_PAGE* page)
{
    HLPFILE_PAGE* next;

    while (page)
    {
        next = page->next;
        HLPFILE_DeleteMacro(page->first_macro);
        HeapFree(GetProcessHeap(), 0, page);
        page = next;
    }
}
