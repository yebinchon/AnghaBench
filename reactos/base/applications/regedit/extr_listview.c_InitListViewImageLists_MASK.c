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
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/ * HIMAGELIST ;
typedef  int /*<<< orphan*/  HICON ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CX_ICON ; 
 int /*<<< orphan*/  CY_ICON ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  IDI_BIN ; 
 int /*<<< orphan*/  IDI_STRING ; 
 int /*<<< orphan*/  ILC_MASK ; 
 void* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 void* Image_Bin ; 
 void* Image_String ; 
 scalar_t__ LISTVIEW_NUM_ICONS ; 
 int /*<<< orphan*/  LVSIL_SMALL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  hInst ; 

__attribute__((used)) static BOOL FUNC6(HWND hwndLV)
{
    HIMAGELIST himl;  /* handle to image list  */
    HICON hico;       /* handle to icon  */

    /* Create the image list.  */
    if ((himl = FUNC1(CX_ICON, CY_ICON,
                                 ILC_MASK, 0, LISTVIEW_NUM_ICONS)) == NULL)
    {
        return FALSE;
    }

    hico = FUNC4(hInst, FUNC5(IDI_BIN));
    Image_Bin = FUNC0(himl, hico);

    hico = FUNC4(hInst, FUNC5(IDI_STRING));
    Image_String = FUNC0(himl, hico);

    /* Fail if not all of the images were added.  */
    if (FUNC2(himl) < LISTVIEW_NUM_ICONS)
    {
        return FALSE;
    }

    /* Associate the image list with the tree view control.  */
    (void)FUNC3(hwndLV, himl, LVSIL_SMALL);

    return TRUE;
}