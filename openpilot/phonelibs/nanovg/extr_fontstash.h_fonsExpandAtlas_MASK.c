#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int nnodes; TYPE_1__* nodes; } ;
struct TYPE_8__ {int width; int height; scalar_t__ (* renderResize ) (int /*<<< orphan*/ ,int,int) ;int /*<<< orphan*/  userPtr; } ;
struct TYPE_9__ {unsigned char* texData; int* dirtyRect; float itw; float ith; TYPE_2__ params; TYPE_5__* atlas; } ;
struct TYPE_7__ {int y; } ;
typedef  TYPE_3__ FONScontext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int,int) ; 

int FUNC8(FONScontext* stash, int width, int height)
{
	int i, maxy = 0;
	unsigned char* data = NULL;
	if (stash == NULL) return 0;

	width = FUNC2(width, stash->params.width);
	height = FUNC2(height, stash->params.height);

	if (width == stash->params.width && height == stash->params.height)
		return 1;

	// Flush pending glyphs.
	FUNC1(stash);

	// Create new texture
	if (stash->params.renderResize != NULL) {
		if (stash->params.renderResize(stash->params.userPtr, width, height) == 0)
			return 0;
	}
	// Copy old texture data over.
	data = (unsigned char*)FUNC4(width * height);
	if (data == NULL)
		return 0;
	for (i = 0; i < stash->params.height; i++) {
		unsigned char* dst = &data[i*width];
		unsigned char* src = &stash->texData[i*stash->params.width];
		FUNC5(dst, src, stash->params.width);
		if (width > stash->params.width)
			FUNC6(dst+stash->params.width, 0, width - stash->params.width);
	}
	if (height > stash->params.height)
		FUNC6(&data[stash->params.height * width], 0, (height - stash->params.height) * width);

	FUNC3(stash->texData);
	stash->texData = data;

	// Increase atlas size
	FUNC0(stash->atlas, width, height);

	// Add existing data as dirty.
	for (i = 0; i < stash->atlas->nnodes; i++)
		maxy = FUNC2(maxy, stash->atlas->nodes[i].y);
	stash->dirtyRect[0] = 0;
	stash->dirtyRect[1] = 0;
	stash->dirtyRect[2] = stash->params.width;
	stash->dirtyRect[3] = maxy;

	stash->params.width = width;
	stash->params.height = height;
	stash->itw = 1.0f/stash->params.width;
	stash->ith = 1.0f/stash->params.height;

	return 1;
}