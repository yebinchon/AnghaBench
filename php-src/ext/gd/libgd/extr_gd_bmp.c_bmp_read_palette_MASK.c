#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* gdImagePtr ;
typedef  int /*<<< orphan*/  gdIOCtxPtr ;
struct TYPE_3__ {int* red; int* green; int* blue; int* open; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(gdImagePtr im, gdIOCtxPtr infile, int count, int read_four)
{
	int i;
	int r, g, b, z;

	for (i = 0; i < count; i++) {
		if (
		    !FUNC0(&b, infile) ||
		    !FUNC0(&g, infile) ||
		    !FUNC0(&r, infile) ||
		    (read_four && !FUNC0(&z, infile))
		) {
			return 1;
		}
		im->red[i] = r;
		im->green[i] = g;
		im->blue[i] = b;
		im->open[i] = 1;
	}
	return 0;
}