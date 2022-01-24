#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ cCurImage; scalar_t__ cMaxImage; scalar_t__ cGrow; int flags; char* has_alpha; scalar_t__ hbmMask; int /*<<< orphan*/  hdcMask; scalar_t__ hbmImage; int /*<<< orphan*/  hdcImage; } ;
struct TYPE_8__ {scalar_t__ cx; scalar_t__ cy; } ;
typedef  TYPE_1__ SIZE ;
typedef  scalar_t__ INT ;
typedef  TYPE_2__* HIMAGELIST ;
typedef  int /*<<< orphan*/  HDC ;
typedef  scalar_t__ HBITMAP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 char* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int ILC_MASK ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  SRCCOPY ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (char*,TYPE_2__*,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,scalar_t__,TYPE_1__*) ; 
 scalar_t__ FUNC13 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void
FUNC14(HIMAGELIST himl, INT nImageCount)
{
    HDC     hdcBitmap;
    HBITMAP hbmNewBitmap, hbmNull;
    INT     nNewCount;
    SIZE    sz;

    FUNC10("%p has allocated %d, max %d, grow %d images\n", himl, himl->cCurImage, himl->cMaxImage, himl->cGrow);

    if (himl->cCurImage + nImageCount < himl->cMaxImage)
        return;

    nNewCount = himl->cMaxImage + FUNC13(nImageCount, himl->cGrow) + 1;

    FUNC12(himl, nNewCount, &sz);

    FUNC10("Create expanded bitmaps : himl=%p x=%d y=%d count=%d\n", himl, sz.cx, sz.cy, nNewCount);
    hdcBitmap = FUNC2 (0);

    hbmNewBitmap = FUNC8(hdcBitmap, himl, nNewCount);

    if (hbmNewBitmap == 0)
        FUNC5("creating new image bitmap (x=%d y=%d)!\n", sz.cx, sz.cy);

    if (himl->cCurImage)
    {
        hbmNull = FUNC9 (hdcBitmap, hbmNewBitmap);
        FUNC0 (hdcBitmap, 0, 0, sz.cx, sz.cy,
                himl->hdcImage, 0, 0, SRCCOPY);
        FUNC9 (hdcBitmap, hbmNull);
    }
    FUNC9 (himl->hdcImage, hbmNewBitmap);
    FUNC4 (himl->hbmImage);
    himl->hbmImage = hbmNewBitmap;

    if (himl->flags & ILC_MASK)
    {
        hbmNewBitmap = FUNC1 (sz.cx, sz.cy, 1, 1, NULL);

        if (hbmNewBitmap == 0)
            FUNC5("creating new mask bitmap!\n");

	if(himl->cCurImage)
	{
	    hbmNull = FUNC9 (hdcBitmap, hbmNewBitmap);
	    FUNC0 (hdcBitmap, 0, 0, sz.cx, sz.cy,
		    himl->hdcMask, 0, 0, SRCCOPY);
	    FUNC9 (hdcBitmap, hbmNull);
	}
        FUNC9 (himl->hdcMask, hbmNewBitmap);
        FUNC4 (himl->hbmMask);
        himl->hbmMask = hbmNewBitmap;
    }

    if (himl->has_alpha)
    {
        char *new_alpha = FUNC7( FUNC6(), HEAP_ZERO_MEMORY, himl->has_alpha, nNewCount );
        if (new_alpha) himl->has_alpha = new_alpha;
        else
        {
            FUNC11( himl->has_alpha );
            himl->has_alpha = NULL;
        }
    }

    himl->cMaxImage = nNewCount;

    FUNC3 (hdcBitmap);
}