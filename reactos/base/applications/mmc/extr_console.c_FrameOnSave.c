
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PCONSOLE_CHILDFRM_WND ;
typedef int HWND ;
typedef int BOOL ;


 int DoSaveFile (int ,int *) ;
 int FALSE ;
 int * GetActiveChildInfo () ;

__attribute__((used)) static BOOL
FrameOnSave(
    HWND hWnd)
{
    PCONSOLE_CHILDFRM_WND pChildInfo;

    pChildInfo = GetActiveChildInfo();
    if (pChildInfo == ((void*)0))
        return FALSE;

    return DoSaveFile(hWnd, pChildInfo);
}
