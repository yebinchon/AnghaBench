#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {float x; float y; float width; } ;
struct TYPE_8__ {int width; int height; } ;
struct TYPE_10__ {scalar_t__ nverts; TYPE_2__* atlas; TYPE_1__ params; } ;
struct TYPE_9__ {int nnodes; TYPE_4__* nodes; } ;
typedef  TYPE_3__ FONScontext ;
typedef  TYPE_4__ FONSatlasNode ;

/* Variables and functions */
 scalar_t__ FONS_VERTEX_COUNT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,float,float,float,float,int) ; 

void FUNC2(FONScontext* stash, float x, float y)
{
	int i;
	int w = stash->params.width;
	int h = stash->params.height;
	float u = w == 0 ? 0 : (1.0f / w);
	float v = h == 0 ? 0 : (1.0f / h);

	if (stash->nverts+6+6 > FONS_VERTEX_COUNT)
		FUNC0(stash);

	// Draw background
	FUNC1(stash, x+0, y+0, u, v, 0x0fffffff);
	FUNC1(stash, x+w, y+h, u, v, 0x0fffffff);
	FUNC1(stash, x+w, y+0, u, v, 0x0fffffff);

	FUNC1(stash, x+0, y+0, u, v, 0x0fffffff);
	FUNC1(stash, x+0, y+h, u, v, 0x0fffffff);
	FUNC1(stash, x+w, y+h, u, v, 0x0fffffff);

	// Draw texture
	FUNC1(stash, x+0, y+0, 0, 0, 0xffffffff);
	FUNC1(stash, x+w, y+h, 1, 1, 0xffffffff);
	FUNC1(stash, x+w, y+0, 1, 0, 0xffffffff);

	FUNC1(stash, x+0, y+0, 0, 0, 0xffffffff);
	FUNC1(stash, x+0, y+h, 0, 1, 0xffffffff);
	FUNC1(stash, x+w, y+h, 1, 1, 0xffffffff);

	// Drawbug draw atlas
	for (i = 0; i < stash->atlas->nnodes; i++) {
		FONSatlasNode* n = &stash->atlas->nodes[i];

		if (stash->nverts+6 > FONS_VERTEX_COUNT)
			FUNC0(stash);

		FUNC1(stash, x+n->x+0, y+n->y+0, u, v, 0xc00000ff);
		FUNC1(stash, x+n->x+n->width, y+n->y+1, u, v, 0xc00000ff);
		FUNC1(stash, x+n->x+n->width, y+n->y+0, u, v, 0xc00000ff);

		FUNC1(stash, x+n->x+0, y+n->y+0, u, v, 0xc00000ff);
		FUNC1(stash, x+n->x+0, y+n->y+1, u, v, 0xc00000ff);
		FUNC1(stash, x+n->x+n->width, y+n->y+1, u, v, 0xc00000ff);
	}

	FUNC0(stash);
}