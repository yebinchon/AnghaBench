
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int mminfo ;
typedef char WCHAR ;
struct TYPE_7__ {int hRes; int hMMio; } ;
struct TYPE_6__ {int cchBuffer; scalar_t__ pchBuffer; int fccIOProc; } ;
typedef TYPE_1__ MMIOINFO ;
typedef scalar_t__ LPVOID ;
typedef int LPCWSTR ;
typedef int HRSRC ;
typedef int HINSTANCE ;
typedef int BOOL ;
typedef TYPE_2__ ANIMATE_INFO ;


 int FALSE ;
 int FOURCC_MEM ;
 int FindResourceW (int ,int ,char const*) ;
 int FreeResource (int ) ;
 int LoadResource (int ,int ) ;
 scalar_t__ LockResource (int ) ;
 int MMIO_READ ;
 int SizeofResource (int ,int ) ;
 int TRUE ;
 int memset (TYPE_1__*,int ,int) ;
 int mmioOpenW (int *,TYPE_1__*,int ) ;

__attribute__((used)) static BOOL ANIMATE_LoadResW(ANIMATE_INFO *infoPtr, HINSTANCE hInst, LPCWSTR lpName)
{
    static const WCHAR aviW[] = { 'A', 'V', 'I', 0 };
    HRSRC hrsrc;
    MMIOINFO mminfo;
    LPVOID lpAvi;

    hrsrc = FindResourceW(hInst, lpName, aviW);
    if (!hrsrc)
 return FALSE;

    infoPtr->hRes = LoadResource(hInst, hrsrc);
    if (!infoPtr->hRes)
  return FALSE;

    lpAvi = LockResource(infoPtr->hRes);
    if (!lpAvi)
 return FALSE;

    memset(&mminfo, 0, sizeof(mminfo));
    mminfo.fccIOProc = FOURCC_MEM;
    mminfo.pchBuffer = lpAvi;
    mminfo.cchBuffer = SizeofResource(hInst, hrsrc);
    infoPtr->hMMio = mmioOpenW(((void*)0), &mminfo, MMIO_READ);
    if (!infoPtr->hMMio)
    {
 FreeResource(infoPtr->hRes);
 return FALSE;
    }

    return TRUE;
}
