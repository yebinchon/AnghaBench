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
typedef  int /*<<< orphan*/  IActiveScriptParse ;
typedef  int /*<<< orphan*/  IActiveScript ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCRIPTITEM_ISVISIBLE ; 
 int /*<<< orphan*/  SCRIPTSTATE_INITIALIZED ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  script_site ; 
 int /*<<< orphan*/  wscriptW ; 
 int /*<<< orphan*/  wshW ; 

__attribute__((used)) static BOOL FUNC7(IActiveScript *script, IActiveScriptParse *parser)
{
    HRESULT hres;

    if(!FUNC6())
        return FALSE;

    hres = FUNC3(script, &script_site);
    if(FUNC0(hres))
        return FALSE;

    hres = FUNC1(parser);
    if(FUNC0(hres))
        return FALSE;

    hres = FUNC2(script, wscriptW, SCRIPTITEM_ISVISIBLE);
    if(FUNC0(hres))
        return FALSE;

    hres = FUNC2(script, wshW, SCRIPTITEM_ISVISIBLE);
    if(FUNC0(hres))
        return FALSE;

    hres = FUNC4(script, SCRIPTSTATE_INITIALIZED);
    return FUNC5(hres);
}