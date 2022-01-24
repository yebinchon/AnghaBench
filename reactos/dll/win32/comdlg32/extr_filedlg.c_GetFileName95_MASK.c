#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WORD ;
struct TYPE_11__ {void* sharevistring; void* helpmsgstring; void* lbselchstring; void* fileokstring; } ;
struct TYPE_10__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_9__ {scalar_t__ cy; scalar_t__ cx; } ;
struct TYPE_13__ {scalar_t__ ole_initialized; TYPE_4__* ofnInfos; scalar_t__ unicode; TYPE_3__ HookMsg; TYPE_2__ initial_size; TYPE_1__ sizedlg; } ;
struct TYPE_12__ {int Flags; int /*<<< orphan*/  hwndOwner; } ;
typedef  int LRESULT ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HRSRC ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  TYPE_5__ FileOpenDlgInfos ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CDERR_FINDRESFAILURE ; 
 int /*<<< orphan*/  CDERR_LOADRESFAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  COMDLG32_hInstance ; 
 int FUNC1 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FALSE ; 
 int /*<<< orphan*/  FILEOKSTRINGW ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FileOpenDlgProc95 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HELPMSGSTRINGW ; 
 int /*<<< orphan*/  LBSELCHSTRINGW ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NEWFILEOPENORD ; 
 int /*<<< orphan*/  NEWFILEOPENV2ORD ; 
 int OFN_ENABLEHOOK ; 
 int OFN_ENABLESIZING ; 
 int OFN_ENABLETEMPLATE ; 
 int OFN_ENABLETEMPLATEHANDLE ; 
 int OFN_EXPLORER ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ RT_DIALOG ; 
 void* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SHAREVISTRINGW ; 
 int UNIMPLEMENTED_FLAGS ; 
 scalar_t__ FUNC10 (TYPE_5__*) ; 
 scalar_t__ FUNC11 (TYPE_5__*) ; 

__attribute__((used)) static BOOL FUNC12(FileOpenDlgInfos *fodInfos)
{
    LRESULT lRes;
    void *template;
    HRSRC hRes;
    HANDLE hDlgTmpl = 0;
    WORD templateid;

    /* test for missing functionality */
    if (fodInfos->ofnInfos->Flags & UNIMPLEMENTED_FLAGS)
    {
      FUNC3("Flags 0x%08x not yet implemented\n",
         fodInfos->ofnInfos->Flags & UNIMPLEMENTED_FLAGS);
    }

    /* Create the dialog from a template */

    if (FUNC11(fodInfos))
        templateid = NEWFILEOPENV2ORD;
    else
        templateid = NEWFILEOPENORD;

    if (!(hRes = FUNC4(COMDLG32_hInstance, FUNC7(templateid), (LPCWSTR)RT_DIALOG)))
    {
        FUNC0(CDERR_FINDRESFAILURE);
        return FALSE;
    }
    if (!(hDlgTmpl = FUNC5(COMDLG32_hInstance, hRes )) ||
        !(template = FUNC6( hDlgTmpl )))
    {
        FUNC0(CDERR_LOADRESFAILURE);
        return FALSE;
    }

    /* msdn: explorer style dialogs permit sizing by default.
     * The OFN_ENABLESIZING flag is only needed when a hook or
     * custom template is provided */
    if( (fodInfos->ofnInfos->Flags & OFN_EXPLORER) &&
            !(fodInfos->ofnInfos->Flags & ( OFN_ENABLEHOOK | OFN_ENABLETEMPLATE | OFN_ENABLETEMPLATEHANDLE)))
        fodInfos->ofnInfos->Flags |= OFN_ENABLESIZING;

    if (fodInfos->ofnInfos->Flags & OFN_ENABLESIZING)
    {
        fodInfos->sizedlg.cx = fodInfos->sizedlg.cy = 0;
        fodInfos->initial_size.x = fodInfos->initial_size.y = 0;
    }

    /* old style hook messages */
    if (FUNC10(fodInfos))
    {
      fodInfos->HookMsg.fileokstring = FUNC9(FILEOKSTRINGW);
      fodInfos->HookMsg.lbselchstring = FUNC9(LBSELCHSTRINGW);
      fodInfos->HookMsg.helpmsgstring = FUNC9(HELPMSGSTRINGW);
      fodInfos->HookMsg.sharevistring = FUNC9(SHAREVISTRINGW);
    }

    if (fodInfos->unicode)
      lRes = FUNC2(COMDLG32_hInstance,
                                     template,
                                     fodInfos->ofnInfos->hwndOwner,
                                     FileOpenDlgProc95,
                                     (LPARAM) fodInfos);
    else
      lRes = FUNC1(COMDLG32_hInstance,
                                     template,
                                     fodInfos->ofnInfos->hwndOwner,
                                     FileOpenDlgProc95,
                                     (LPARAM) fodInfos);
    if (fodInfos->ole_initialized)
        FUNC8();

    /* Unable to create the dialog */
    if( lRes == -1)
        return FALSE;

    return lRes;
}