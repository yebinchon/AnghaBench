
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dwSize; int dwFlags; int hwndParent; } ;
typedef int HWND ;
typedef int DWORD ;
typedef TYPE_1__ CRYPTUI_CERT_MGR_STRUCT ;
typedef int BOOL ;


 int CryptUIDlgCertMgr (TYPE_1__*) ;
 int TRACE (char*,int ,int ) ;
 int ZeroMemory (TYPE_1__*,int) ;

__attribute__((used)) static BOOL display_cert_manager(HWND parent, DWORD flags)
{
    CRYPTUI_CERT_MGR_STRUCT dlg;

    TRACE("(%p, 0x%x)\n", parent, flags);

    ZeroMemory(&dlg, sizeof(CRYPTUI_CERT_MGR_STRUCT));
    dlg.dwSize = sizeof(CRYPTUI_CERT_MGR_STRUCT);
    dlg.hwndParent = parent;
    dlg.dwFlags = flags;

    return CryptUIDlgCertMgr(&dlg);
}
