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
typedef  int /*<<< orphan*/  gdImagePtr ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int const) ; 
 int FUNC1 (int /*<<< orphan*/ ,int const) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ,int const) ; 
 int FUNC5 (int /*<<< orphan*/ ,int const) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(gdImagePtr im, int *color)
{
	const int tl = FUNC3(im, 0, 0);
	const int tr = FUNC3(im, FUNC6(im) - 1, 0);
	const int bl = FUNC3(im, 0, FUNC7(im) -1);
	const int br = FUNC3(im, FUNC6(im) - 1, FUNC7(im) -1);

	if (tr == bl && tr == br) {
		*color = tr;
		return 3;
	} else if (tl == bl && tl == br) {
		*color = tl;
		return 3;
	} else if (tl == tr &&  tl == br) {
		*color = tl;
		return 3;
	} else if (tl == tr &&  tl == bl) {
		*color = tl;
		return 3;
	} else if (tl == tr  || tl == bl || tl == br) {
		*color = tl;
		return 2;
	} else if (tr == bl || tr == br) {
		*color = tr;
		return 2;
	} else if (br == bl) {
		*color = bl;
		return 2;
	} else {
		register int r,b,g,a;

		r = (int)(0.5f + (FUNC5(im, tl) + FUNC5(im, tr) + FUNC5(im, bl) + FUNC5(im, br)) / 4);
		g = (int)(0.5f + (FUNC4(im, tl) + FUNC4(im, tr) + FUNC4(im, bl) + FUNC4(im, br)) / 4);
		b = (int)(0.5f + (FUNC1(im, tl) + FUNC1(im, tr) + FUNC1(im, bl) + FUNC1(im, br)) / 4);
		a = (int)(0.5f + (FUNC0(im, tl) + FUNC0(im, tr) + FUNC0(im, bl) + FUNC0(im, br)) / 4);
		*color = FUNC2(im, r, g, b, a);
		return 0;
	}
}