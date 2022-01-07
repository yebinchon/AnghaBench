
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hStoreProv; int (* provControl ) (int ,int ,int ,void const*) ;} ;
typedef TYPE_1__ WINE_PROVIDERSTORE ;
typedef int WINECRYPT_CERTSTORE ;
typedef int DWORD ;
typedef int BOOL ;


 int TRACE (char*,TYPE_1__*,int ,int ,void const*) ;
 int TRUE ;
 int stub1 (int ,int ,int ,void const*) ;

__attribute__((used)) static BOOL ProvStore_control(WINECRYPT_CERTSTORE *cert_store, DWORD dwFlags, DWORD dwCtrlType, void const *pvCtrlPara)
{
    WINE_PROVIDERSTORE *store = (WINE_PROVIDERSTORE*)cert_store;
    BOOL ret = TRUE;

    TRACE("(%p, %08x, %d, %p)\n", store, dwFlags, dwCtrlType,
     pvCtrlPara);

    if (store->provControl)
        ret = store->provControl(store->hStoreProv, dwFlags, dwCtrlType,
         pvCtrlPara);
    return ret;
}
