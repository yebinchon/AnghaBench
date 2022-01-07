
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int IActiveScriptParse ;
typedef int IActiveScript ;
typedef int HRESULT ;
typedef int BSTR ;


 scalar_t__ FAILED (int ) ;
 int IActiveScriptParse_ParseScriptText (int *,int ,int *,int *,int *,int,int,int,int *,int *) ;
 int IActiveScript_SetScriptState (int *,int ) ;
 int SCRIPTITEM_ISVISIBLE ;
 int SCRIPTSTATE_STARTED ;
 int SCRIPTTEXT_HOSTMANAGESSOURCE ;
 int SysFreeString (int ) ;
 int WINE_FIXME (char*,...) ;
 int get_script_str (int const*) ;

__attribute__((used)) static void run_script(const WCHAR *filename, IActiveScript *script, IActiveScriptParse *parser)
{
    BSTR text;
    HRESULT hres;

    text = get_script_str(filename);
    if(!text) {
        WINE_FIXME("Could not get script text\n");
        return;
    }

    hres = IActiveScriptParse_ParseScriptText(parser, text, ((void*)0), ((void*)0), ((void*)0), 1, 1,
            SCRIPTTEXT_HOSTMANAGESSOURCE|SCRIPTITEM_ISVISIBLE, ((void*)0), ((void*)0));
    SysFreeString(text);
    if(FAILED(hres)) {
        WINE_FIXME("ParseScriptText failed: %08x\n", hres);
        return;
    }

    hres = IActiveScript_SetScriptState(script, SCRIPTSTATE_STARTED);
    if(FAILED(hres))
        WINE_FIXME("SetScriptState failed: %08x\n", hres);
}
