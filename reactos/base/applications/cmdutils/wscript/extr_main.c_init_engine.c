
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IActiveScriptParse ;
typedef int IActiveScript ;
typedef int HRESULT ;
typedef int BOOL ;


 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int IActiveScriptParse_InitNew (int *) ;
 int IActiveScript_AddNamedItem (int *,int ,int ) ;
 int IActiveScript_SetScriptSite (int *,int *) ;
 int IActiveScript_SetScriptState (int *,int ) ;
 int SCRIPTITEM_ISVISIBLE ;
 int SCRIPTSTATE_INITIALIZED ;
 int SUCCEEDED (int ) ;
 int load_typelib () ;
 int script_site ;
 int wscriptW ;
 int wshW ;

__attribute__((used)) static BOOL init_engine(IActiveScript *script, IActiveScriptParse *parser)
{
    HRESULT hres;

    if(!load_typelib())
        return FALSE;

    hres = IActiveScript_SetScriptSite(script, &script_site);
    if(FAILED(hres))
        return FALSE;

    hres = IActiveScriptParse_InitNew(parser);
    if(FAILED(hres))
        return FALSE;

    hres = IActiveScript_AddNamedItem(script, wscriptW, SCRIPTITEM_ISVISIBLE);
    if(FAILED(hres))
        return FALSE;

    hres = IActiveScript_AddNamedItem(script, wshW, SCRIPTITEM_ISVISIBLE);
    if(FAILED(hres))
        return FALSE;

    hres = IActiveScript_SetScriptState(script, SCRIPTSTATE_INITIALIZED);
    return SUCCEEDED(hres);
}
