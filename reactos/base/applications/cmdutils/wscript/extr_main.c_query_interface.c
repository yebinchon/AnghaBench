
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REFIID ;
typedef int IUnknown ;
typedef int HRESULT ;


 int E_NOINTERFACE ;
 int IID_IActiveScriptSite ;
 int IID_IActiveScriptSiteWindow ;
 int IID_IUnknown ;
 int IUnknown_AddRef (int *) ;
 scalar_t__ IsEqualGUID (int ,int *) ;
 int S_OK ;
 int TRACE (char*,void**,...) ;
 int script_site ;
 int script_site_window ;
 int wine_dbgstr_guid (int ) ;

__attribute__((used)) static HRESULT query_interface(REFIID riid, void **ppv)
{
    if(IsEqualGUID(riid, &IID_IUnknown)) {
        TRACE("(IID_IUnknown %p)\n", ppv);
        *ppv = &script_site;
    }else if(IsEqualGUID(riid, &IID_IActiveScriptSite)) {
        TRACE("(IID_IActiveScriptSite %p)\n", ppv);
        *ppv = &script_site;
    }else if(IsEqualGUID(riid, &IID_IActiveScriptSiteWindow)) {
        TRACE("(IID_IActiveScriptSiteWindow %p)\n", ppv);
        *ppv = &script_site_window;
    }else {
        *ppv = ((void*)0);
        TRACE("(%s %p)\n", wine_dbgstr_guid(riid), ppv);
        return E_NOINTERFACE;
    }

    IUnknown_AddRef((IUnknown*)*ppv);
    return S_OK;
}
