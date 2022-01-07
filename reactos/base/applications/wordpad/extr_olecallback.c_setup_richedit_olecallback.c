
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int stg; } ;
typedef int LPARAM ;
typedef int HWND ;
typedef int HRESULT ;


 int EM_SETOLECALLBACK ;
 int STGM_DELETEONRELEASE ;
 int STGM_READWRITE ;
 int STGM_SHARE_EXCLUSIVE ;
 int SendMessageW (int ,int ,int ,int ) ;
 int StgCreateDocfile (int *,int,int ,int *) ;
 TYPE_1__ olecallback ;

HRESULT setup_richedit_olecallback(HWND hEditorWnd)
{
    HRESULT hr = StgCreateDocfile(((void*)0),
          STGM_READWRITE | STGM_SHARE_EXCLUSIVE | STGM_DELETEONRELEASE,
          0, &olecallback.stg);

    SendMessageW(hEditorWnd, EM_SETOLECALLBACK, 0, (LPARAM)&olecallback);
    return hr;
}
