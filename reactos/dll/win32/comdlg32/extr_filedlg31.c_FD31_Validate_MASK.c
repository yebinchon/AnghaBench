#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ofnsav ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_12__ {int /*<<< orphan*/  lParam; int /*<<< orphan*/  fileokstring; scalar_t__ hook; int /*<<< orphan*/  lbselchstring; TYPE_1__* ofnW; int /*<<< orphan*/  hwnd; } ;
struct TYPE_11__ {int Flags; char* lpstrFile; int /*<<< orphan*/  lStructSize; } ;
typedef  TYPE_1__ OPENFILENAMEW ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  char* LPWSTR ;
typedef  TYPE_1__* LPOPENFILENAMEW ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  INT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  TYPE_3__ FD31_DATA ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int BUFFILE ; 
 int /*<<< orphan*/  CD_LBSELCHANGE ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC1 (TYPE_3__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__ const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int OFN_ALLOWMULTISELECT ; 
 int OFN_EXPLORER ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  edt1 ; 
 int /*<<< orphan*/  lst1 ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,TYPE_1__*,int) ; 
 int FUNC12 (int /*<<< orphan*/ ,int) ; 
 char* FUNC13 (char*,char) ; 

__attribute__((used)) static LRESULT FUNC14( const FD31_DATA *lfs, LPCWSTR path, UINT control, INT itemIndex,
                                 BOOL internalUse )
{
    LONG lRet;
    HWND hWnd = lfs->hwnd;
    OPENFILENAMEW ofnsav;
    LPOPENFILENAMEW ofnW = lfs->ofnW;
    WCHAR filename[BUFFILE];
    int copied_size = FUNC12( ofnW->lStructSize, sizeof(ofnsav) );

    FUNC11( &ofnsav, ofnW, copied_size ); /* for later restoring */

    /* get current file name */
    if (path)
        FUNC9(filename, path, FUNC0(filename));
    else
        FUNC5( hWnd, edt1, filename, FUNC0(filename));

    FUNC7("got filename = %s\n", FUNC8(filename));
    /* if we did not click in file list to get there */
    if (control != lst1)
    {
        if (!FUNC2( lfs, filename) )
           return FALSE;
    }
    FUNC4(lfs, filename);

    if (internalUse)
    { /* called internally after a change in a combo */
        if (lfs->hook)
        {
             FUNC1(lfs, lfs->lbselchstring, control,
                             FUNC6(itemIndex,CD_LBSELCHANGE));
        }
        return TRUE;
    }

    FUNC3(lfs);
    if (lfs->hook)
    {
        lRet = FUNC1(lfs, lfs->fileokstring,
                  0, lfs->lParam );
        if (lRet)
        {
            FUNC11( ofnW, &ofnsav, copied_size ); /* restore old state */
            return FALSE;
        }
    }
    if ((ofnW->Flags & OFN_ALLOWMULTISELECT) && (ofnW->Flags & OFN_EXPLORER))
    {
        if (ofnW->lpstrFile)
        {
            LPWSTR str = ofnW->lpstrFile;
            LPWSTR ptr = FUNC13(str, '\\');
	    str[FUNC10(str) + 1] = '\0';
	    *ptr = 0;
        }
    }
    return TRUE;
}