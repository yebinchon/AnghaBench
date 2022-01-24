#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint32_t ;
struct dc_capture {int x; int y; int capture_cursor; int compatibility; int /*<<< orphan*/  bmp; int /*<<< orphan*/  hdc; int /*<<< orphan*/  old_bmp; int /*<<< orphan*/  bits; int /*<<< orphan*/  valid; void* height; void* width; } ;
struct TYPE_4__ {int biSize; int biBitCount; int biPlanes; void* biHeight; void* biWidth; } ;
struct TYPE_5__ {TYPE_1__ bmiHeader; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ BITMAPINFOHEADER ;
typedef  TYPE_2__ BITMAPINFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,void**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DIB_RGB_COLORS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct dc_capture*) ; 
 int /*<<< orphan*/  FUNC5 (struct dc_capture*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

void FUNC8(struct dc_capture *capture, int x, int y, uint32_t width,
		     uint32_t height, bool cursor, bool compatibility)
{
	FUNC5(capture, 0, sizeof(struct dc_capture));

	capture->x = x;
	capture->y = y;
	capture->width = width;
	capture->height = height;
	capture->capture_cursor = cursor;

	FUNC6();

	if (!FUNC3())
		compatibility = true;

	capture->compatibility = compatibility;

	FUNC4(capture);

	FUNC7();

	if (!capture->valid)
		return;

	if (compatibility) {
		BITMAPINFO bi = {0};
		BITMAPINFOHEADER *bih = &bi.bmiHeader;
		bih->biSize = sizeof(BITMAPINFOHEADER);
		bih->biBitCount = 32;
		bih->biWidth = width;
		bih->biHeight = height;
		bih->biPlanes = 1;

		capture->hdc = FUNC0(NULL);
		capture->bmp =
			FUNC1(capture->hdc, &bi, DIB_RGB_COLORS,
					 (void **)&capture->bits, NULL, 0);
		capture->old_bmp = FUNC2(capture->hdc, capture->bmp);
	}
}