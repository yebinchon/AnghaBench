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
typedef  int /*<<< orphan*/  NVGcontext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int,int,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 unsigned char* FUNC2 (unsigned char*,int,int*,int*,int*,int) ; 

int FUNC3(NVGcontext* ctx, int imageFlags, unsigned char* data, int ndata)
{
	int w, h, n, image;
	unsigned char* img = FUNC2(data, ndata, &w, &h, &n, 4);
	if (img == NULL) {
//		printf("Failed to load %s - %s\n", filename, stbi_failure_reason());
		return 0;
	}
	image = FUNC0(ctx, w, h, imageFlags, img);
	FUNC1(img);
	return image;
}