#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_4__ {int bmHeight; int bmWidth; int bmBitsPixel; } ;
typedef  int /*<<< orphan*/  HBITMAP ;
typedef  TYPE_1__ BITMAP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC2 (unsigned int) ; 

__attribute__((used)) static uint8_t *FUNC3(HBITMAP hbmp, BITMAP *bmp)
{
	if (FUNC1(hbmp, sizeof(*bmp), bmp) != 0) {
		uint8_t *output;
		unsigned int size =
			(bmp->bmHeight * bmp->bmWidth * bmp->bmBitsPixel) / 8;

		output = FUNC2(size);
		FUNC0(hbmp, size, output);
		return output;
	}

	return NULL;
}