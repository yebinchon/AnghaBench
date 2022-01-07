
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int uScrollTime; } ;
typedef TYPE_1__ TREEVIEW_INFO ;
typedef int LRESULT ;


 int min (int ,int) ;

__attribute__((used)) static LRESULT
TREEVIEW_SetScrollTime(TREEVIEW_INFO *infoPtr, UINT uScrollTime)
{
    UINT uOldScrollTime = infoPtr->uScrollTime;

    infoPtr->uScrollTime = min(uScrollTime, 100);

    return uOldScrollTime;
}
