
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WPARAM ;
struct TYPE_3__ {int himlState; int himlNormal; } ;
typedef TYPE_1__ TREEVIEW_INFO ;
typedef int LRESULT ;


 int TRACE (char*) ;



__attribute__((used)) static LRESULT
TREEVIEW_GetImageList(const TREEVIEW_INFO *infoPtr, WPARAM wParam)
{
    TRACE("\n");

    switch (wParam)
    {
    case 129:
 return (LRESULT)infoPtr->himlNormal;

    case 128:
 return (LRESULT)infoPtr->himlState;

    default:
 return 0;
    }
}
