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
typedef  scalar_t__ HICON ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDI_CLOSED_FILE ; 
 int /*<<< orphan*/  IDI_OPEN_FILE ; 
 int /*<<< orphan*/  IDI_ROOT ; 
 int ILC_COLOR32 ; 
 int ILC_MASK ; 
 int /*<<< orphan*/  IMAGE_ICON ; 
 void* FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 void* Image_Closed ; 
 void* Image_Open ; 
 void* Image_Root ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ NUM_ICONS ; 
 int /*<<< orphan*/  SM_CXSMICON ; 
 int /*<<< orphan*/  SM_CYSMICON ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  TVSIL_NORMAL ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hInst ; 

__attribute__((used)) static BOOL FUNC9(HWND hwndTV)
{
    HIMAGELIST himl;  /* handle to image list  */
    HICON hico;       /* handle to icon  */

    /* Create the image list.  */
    if ((himl = FUNC3(FUNC1(SM_CXSMICON),
                                 FUNC1(SM_CYSMICON),
                                 ILC_MASK | ILC_COLOR32,
                                 0,
                                 NUM_ICONS)) == NULL)
    {
        return FALSE;
    }

    /* Add the open file, closed file, and document bitmaps.  */
    hico = FUNC6(hInst,
                      FUNC7(IDI_OPEN_FILE),
                      IMAGE_ICON,
                      FUNC1(SM_CXSMICON),
                      FUNC1(SM_CYSMICON),
                      0);
    if (hico)
    {
        Image_Open = FUNC2(himl, hico);
        FUNC0(hico);
    }

    hico = FUNC6(hInst,
                      FUNC7(IDI_CLOSED_FILE),
                      IMAGE_ICON,
                      FUNC1(SM_CXSMICON),
                      FUNC1(SM_CYSMICON),
                      0);
    if (hico)
    {
        Image_Closed = FUNC2(himl, hico);
        FUNC0(hico);
    }

    hico = FUNC6(hInst,
                      FUNC7(IDI_ROOT),
                      IMAGE_ICON,
                      FUNC1(SM_CXSMICON),
                      FUNC1(SM_CYSMICON),
                      0);
    if (hico)
    {
        Image_Root = FUNC2(himl, hico);
        FUNC0(hico);
    }

    /* Fail if not all of the images were added.  */
    if (FUNC5(himl) < NUM_ICONS)
    {
        FUNC4(himl);
        return FALSE;
    }

    /* Associate the image list with the tree view control.  */
    (void)FUNC8(hwndTV, himl, TVSIL_NORMAL);

    return TRUE;
}