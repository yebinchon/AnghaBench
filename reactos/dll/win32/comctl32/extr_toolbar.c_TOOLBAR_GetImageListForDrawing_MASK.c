#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ iBitmap; } ;
struct TYPE_12__ {int /*<<< orphan*/  nNumBitmaps; } ;
typedef  TYPE_1__ TOOLBAR_INFO ;
typedef  TYPE_2__ TBUTTON_INFO ;
typedef  scalar_t__ INT ;
typedef  int IMAGE_LIST_TYPE ;
typedef  int /*<<< orphan*/ * HIMAGELIST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__ const*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
#define  IMAGE_LIST_DEFAULT 130 
#define  IMAGE_LIST_DISABLED 129 
#define  IMAGE_LIST_HOT 128 
 scalar_t__ I_IMAGECALLBACK ; 
 scalar_t__ I_IMAGENONE ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (TYPE_1__ const*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__ const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HIMAGELIST
FUNC12 (const TOOLBAR_INFO *infoPtr, TBUTTON_INFO *btnPtr,
                                IMAGE_LIST_TYPE imagelist, INT * index)
{
    HIMAGELIST himl;

    if (!FUNC9(infoPtr,btnPtr->iBitmap)) {
	if (btnPtr->iBitmap == I_IMAGENONE) return NULL;
	FUNC11("bitmap for ID %d, index %d is not valid, number of bitmaps in imagelist: %d\n",
	    FUNC6(btnPtr->iBitmap), FUNC7(btnPtr->iBitmap), infoPtr->nNumBitmaps);
	return NULL;
    }

    if ((*index = FUNC8(infoPtr, btnPtr)) < 0) {
	if ((*index == I_IMAGECALLBACK) ||
	    (*index == I_IMAGENONE)) return NULL;
	FUNC0("TBN_GETDISPINFO returned invalid index %d\n",
	    *index);
	return NULL;
    }

    switch(imagelist)
    {
    case IMAGE_LIST_DEFAULT:
        himl = FUNC2(infoPtr, FUNC4(infoPtr, btnPtr->iBitmap));
        break;
    case IMAGE_LIST_HOT:
        himl = FUNC5(infoPtr, FUNC4(infoPtr, btnPtr->iBitmap));
        break;
    case IMAGE_LIST_DISABLED:
        himl = FUNC3(infoPtr, FUNC4(infoPtr, btnPtr->iBitmap));
        break;
    default:
        himl = NULL;
        FUNC1("Shouldn't reach here\n");
    }

    if (!himl)
       FUNC10("no image list\n");

    return himl;
}