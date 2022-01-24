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
typedef  TYPE_1__* gdImagePtr ;
struct TYPE_4__ {int** pixels; int const transparent; } ;

/* Variables and functions */
 int FUNC0 (int const) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int const,int const) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline int FUNC3(gdImagePtr im, const int x, const int y, const int bgColor)
{
	if (FUNC1(im, x, y)) {
		const int c = im->pixels[y][x];
		if (c == im->transparent) {
			return bgColor == -1 ? FUNC2(0, 0, 0, 127) : bgColor;
		}
		return FUNC0(c);
	} else {
		return bgColor;
	}
}