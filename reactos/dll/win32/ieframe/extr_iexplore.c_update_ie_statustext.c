
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int status_hwnd; } ;
typedef scalar_t__ LPCWSTR ;
typedef int LPARAM ;
typedef TYPE_1__ InternetExplorer ;
typedef int HRESULT ;


 int E_FAIL ;
 int MAKEWORD (int ,int ) ;
 int SB_SETTEXTW ;
 int SB_SIMPLEID ;
 int S_OK ;
 int SendMessageW (int ,int ,int ,int ) ;

HRESULT update_ie_statustext(InternetExplorer* This, LPCWSTR text)
{
    if(!SendMessageW(This->status_hwnd, SB_SETTEXTW, MAKEWORD(SB_SIMPLEID, 0), (LPARAM)text))
        return E_FAIL;

    return S_OK;
}
