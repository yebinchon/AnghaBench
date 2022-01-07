
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_4__ {scalar_t__ bModified; } ;
typedef TYPE_1__* PVIRTMEM ;


 scalar_t__ FALSE ;
 int IDS_INFOREBOOT ;
 int IDS_MESSAGEBOXTITLE ;
 int MB_ICONINFORMATION ;
 int MB_OK ;
 int ResourceMessageBox (int ,int *,int,int ,int ) ;
 int WritePageFileSettings (TYPE_1__*) ;
 int hApplet ;

__attribute__((used)) static VOID
OnVirtMemDialogOk(PVIRTMEM pVirtMem)
{
    if (pVirtMem->bModified != FALSE)
    {
        ResourceMessageBox(hApplet,
                           ((void*)0),
                           MB_ICONINFORMATION | MB_OK,
                           IDS_MESSAGEBOXTITLE,
                           IDS_INFOREBOOT);

        WritePageFileSettings(pVirtMem);
    }
}
