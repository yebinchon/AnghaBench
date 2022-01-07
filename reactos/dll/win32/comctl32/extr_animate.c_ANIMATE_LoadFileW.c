
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hMMio; } ;
typedef int LPWSTR ;
typedef int BOOL ;
typedef TYPE_1__ ANIMATE_INFO ;


 int FALSE ;
 int MMIO_ALLOCBUF ;
 int MMIO_DENYWRITE ;
 int MMIO_READ ;
 int TRUE ;
 int mmioOpenW (int ,int ,int) ;

__attribute__((used)) static BOOL ANIMATE_LoadFileW(ANIMATE_INFO *infoPtr, LPWSTR lpName)
{
    infoPtr->hMMio = mmioOpenW(lpName, 0, MMIO_ALLOCBUF | MMIO_READ | MMIO_DENYWRITE);

    if(!infoPtr->hMMio) return FALSE;
    return TRUE;
}
