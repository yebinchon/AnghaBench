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
struct TYPE_4__ {int width; } ;
struct TYPE_5__ {unsigned char* texData; void** dirtyRect; TYPE_1__ params; int /*<<< orphan*/  atlas; } ;
typedef  TYPE_2__ FONScontext ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int,int*,int*) ; 
 void* FUNC1 (void*,int) ; 
 void* FUNC2 (void*,int) ; 

__attribute__((used)) static void FUNC3(FONScontext* stash, int w, int h)
{
	int x, y, gx, gy;
	unsigned char* dst;
	if (FUNC0(stash->atlas, w, h, &gx, &gy) == 0)
		return;

	// Rasterize
	dst = &stash->texData[gx + gy * stash->params.width];
	for (y = 0; y < h; y++) {
		for (x = 0; x < w; x++)
			dst[x] = 0xff;
		dst += stash->params.width;
	}

	stash->dirtyRect[0] = FUNC2(stash->dirtyRect[0], gx);
	stash->dirtyRect[1] = FUNC2(stash->dirtyRect[1], gy);
	stash->dirtyRect[2] = FUNC1(stash->dirtyRect[2], gx+w);
	stash->dirtyRect[3] = FUNC1(stash->dirtyRect[3], gy+h);
}