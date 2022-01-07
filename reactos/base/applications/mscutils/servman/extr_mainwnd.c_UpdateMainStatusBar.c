
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WPARAM ;
typedef int VOID ;
struct TYPE_3__ {scalar_t__ bInMenuLoop; int * hStatus; } ;
typedef TYPE_1__* PMAIN_WND_INFO ;


 int SB_SIMPLE ;
 int SendMessage (int *,int ,int ,int ) ;

__attribute__((used)) static VOID
UpdateMainStatusBar(PMAIN_WND_INFO Info)
{
    if (Info->hStatus != ((void*)0))
    {
        SendMessage(Info->hStatus,
                    SB_SIMPLE,
                    (WPARAM)Info->bInMenuLoop,
                    0);
    }
}
