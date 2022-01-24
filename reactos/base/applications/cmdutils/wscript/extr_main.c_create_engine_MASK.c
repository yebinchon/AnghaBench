#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IActiveScriptParse ;
typedef  int /*<<< orphan*/  IActiveScript ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  CLSID ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int CLSCTX_INPROC_HANDLER ; 
 int CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IActiveScript ; 
 int /*<<< orphan*/  IID_IActiveScriptParse ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static BOOL FUNC6(CLSID *clsid, IActiveScript **script_ret,
        IActiveScriptParse **parser)
{
    IActiveScript *script;
    IUnknown *unk;
    HRESULT hres;

    hres = FUNC0(clsid, NULL, CLSCTX_INPROC_SERVER|CLSCTX_INPROC_HANDLER,
            &IID_IUnknown, (void**)&unk);
    if(FUNC1(hres))
        return FALSE;

    hres = FUNC4(unk, &IID_IActiveScript, (void**)&script);
    FUNC5(unk);
    if(FUNC1(hres))
        return FALSE;

    hres = FUNC2(script, &IID_IActiveScriptParse, (void**)parser);
    if(FUNC1(hres)) {
        FUNC3(script);
        return FALSE;
    }

    *script_ret = script;
    return TRUE;
}