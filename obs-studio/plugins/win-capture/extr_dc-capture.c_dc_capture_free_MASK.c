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
struct dc_capture {int /*<<< orphan*/  texture; int /*<<< orphan*/  bmp; scalar_t__ hdc; int /*<<< orphan*/  old_bmp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dc_capture*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

void FUNC7(struct dc_capture *capture)
{
	if (capture->hdc) {
		FUNC2(capture->hdc, capture->old_bmp);
		FUNC0(capture->hdc);
		FUNC1(capture->bmp);
	}

	FUNC5();
	FUNC3(capture->texture);
	FUNC6();

	FUNC4(capture, 0, sizeof(struct dc_capture));
}