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
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(gdImagePtr im, int col1, int col2, float threshold)
{
	const int dr = FUNC3(im, col1) - FUNC3(im, col2);
	const int dg = FUNC2(im, col1) - FUNC2(im, col2);
	const int db = FUNC1(im, col1) - FUNC1(im, col2);
	const int da = FUNC0(im, col1) - FUNC0(im, col2);
	const int dist = dr * dr + dg * dg + db * db + da * da;

	return (100.0 * dist / 195075) < threshold;
}