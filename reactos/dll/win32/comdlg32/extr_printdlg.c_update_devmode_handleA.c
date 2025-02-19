
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ dmSize; scalar_t__ dmDriverExtra; } ;
typedef scalar_t__ SIZE_T ;
typedef scalar_t__ LPVOID ;
typedef int * HGLOBAL ;
typedef TYPE_1__ DEVMODEA ;


 int GMEM_MOVEABLE ;
 int * GlobalAlloc (int ,scalar_t__) ;
 int GlobalFree (int *) ;
 scalar_t__ GlobalLock (int *) ;
 int * GlobalReAlloc (int *,scalar_t__,int ) ;
 scalar_t__ GlobalSize (int *) ;
 int GlobalUnlock (int *) ;
 int memcpy (scalar_t__,TYPE_1__*,scalar_t__) ;

__attribute__((used)) static HGLOBAL update_devmode_handleA(HGLOBAL hdm, DEVMODEA *dm)
{
    SIZE_T size = GlobalSize(hdm);
    LPVOID ptr;


    if ((dm->dmSize + dm->dmDriverExtra) > size) {
        if (hdm)
            hdm = GlobalReAlloc(hdm, dm->dmSize + dm->dmDriverExtra, 0);
        else
            hdm = GlobalAlloc(GMEM_MOVEABLE, dm->dmSize + dm->dmDriverExtra);
    }

    if (hdm) {
        ptr = GlobalLock(hdm);
        if (ptr) {
            memcpy(ptr, dm, dm->dmSize + dm->dmDriverExtra);
            GlobalUnlock(hdm);
        }
        else
        {
            GlobalFree(hdm);
            hdm = ((void*)0);
        }
    }
    return hdm;
}
