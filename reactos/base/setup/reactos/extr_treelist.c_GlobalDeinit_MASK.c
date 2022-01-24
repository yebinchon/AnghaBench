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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * hDefaultFontB ; 
 int /*<<< orphan*/ * hDefaultFontN ; 
 int /*<<< orphan*/ * hPatternPen ; 
 int /*<<< orphan*/  lWindowCount ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3() {

	int	lCount;

	lCount = FUNC1(&lWindowCount);
	if(lCount >= 0)
		return;

	if(hDefaultFontN) {
		FUNC0(hDefaultFontN);
		hDefaultFontN = NULL;
	}

	if(hDefaultFontB) {
		FUNC0(hDefaultFontB);
		hDefaultFontB = NULL;
	}

	if(hPatternPen) {
		FUNC0(hPatternPen);
		hPatternPen = NULL;
	}

	if(&pBufferedPtExit) {
		FUNC2();
	}

}