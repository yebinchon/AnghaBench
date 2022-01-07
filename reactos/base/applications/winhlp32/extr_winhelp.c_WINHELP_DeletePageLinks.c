
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* next; } ;
struct TYPE_5__ {TYPE_2__* first_link; } ;
typedef TYPE_1__ HLPFILE_PAGE ;
typedef TYPE_2__ HLPFILE_LINK ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_2__*) ;

__attribute__((used)) static void WINHELP_DeletePageLinks(HLPFILE_PAGE* page)
{
    HLPFILE_LINK* curr;
    HLPFILE_LINK* next;

    for (curr = page->first_link; curr; curr = next)
    {
        next = curr->next;
        HeapFree(GetProcessHeap(), 0, curr);
    }
}
