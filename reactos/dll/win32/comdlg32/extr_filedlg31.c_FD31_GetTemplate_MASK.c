#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char* lpTemplateName; int /*<<< orphan*/  hInstance; } ;
struct TYPE_6__ {int Flags; int /*<<< orphan*/  hInstance; int /*<<< orphan*/  lpTemplateName; } ;
struct TYPE_5__ {void* template; scalar_t__ open; TYPE_3__* ofnA; TYPE_2__* ofnW; } ;
typedef  TYPE_1__* PFD31_DATA ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int /*<<< orphan*/  LPSTR ;
typedef  TYPE_2__* LPOPENFILENAMEW ;
typedef  TYPE_3__* LPOPENFILENAMEA ;
typedef  int /*<<< orphan*/  HRSRC ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CDERR_FINDRESFAILURE ; 
 int /*<<< orphan*/  CDERR_LOADRESFAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  COMDLG32_hInstance ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int OFN_ENABLETEMPLATE ; 
 int OFN_ENABLETEMPLATEHANDLE ; 
 scalar_t__ RT_DIALOG ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static BOOL FUNC5(PFD31_DATA lfs)
{
    LPOPENFILENAMEW ofnW = lfs->ofnW;
    LPOPENFILENAMEA ofnA = lfs->ofnA;
    HANDLE hDlgTmpl;

    if (ofnW->Flags & OFN_ENABLETEMPLATEHANDLE)
    {
        if (!(lfs->template = FUNC4( ofnW->hInstance )))
        {
            FUNC0( CDERR_LOADRESFAILURE );
            return FALSE;
        }
    }
    else if (ofnW->Flags & OFN_ENABLETEMPLATE)
    {
        HRSRC hResInfo;
        if (ofnA)
            hResInfo = FUNC1( ofnA->hInstance, ofnA->lpTemplateName, (LPSTR)RT_DIALOG );
        else
            hResInfo = FUNC2( ofnW->hInstance, ofnW->lpTemplateName, (LPWSTR)RT_DIALOG );
        if (!hResInfo)
        {
            FUNC0( CDERR_FINDRESFAILURE );
            return FALSE;
        }
        if (!(hDlgTmpl = FUNC3( ofnW->hInstance, hResInfo )) ||
            !(lfs->template = FUNC4( hDlgTmpl )))
        {
            FUNC0( CDERR_LOADRESFAILURE );
            return FALSE;
        }
    }
    else /* get it from internal Wine resource */
    {
        HRSRC hResInfo;
        if (!(hResInfo = FUNC1( COMDLG32_hInstance, lfs->open ? "OPEN_FILE" : "SAVE_FILE", (LPSTR)RT_DIALOG )))
        {
            FUNC0( CDERR_FINDRESFAILURE );
            return FALSE;
        }
        if (!(hDlgTmpl = FUNC3( COMDLG32_hInstance, hResInfo )) ||
            !(lfs->template = FUNC4( hDlgTmpl )))
        {
            FUNC0( CDERR_LOADRESFAILURE );
            return FALSE;
        }
    }
    return TRUE;
}