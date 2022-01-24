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
struct image_desc {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  fs_image ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kernel_image ; 

int
FUNC1(FILE *outfile)
{
	struct image_desc *desc;
	int i, res;

	res = FUNC0(outfile, &kernel_image);
	if (res)
		return res;

	res = FUNC0(outfile, &fs_image);
	if (res)
		return res;

	return 0;
}