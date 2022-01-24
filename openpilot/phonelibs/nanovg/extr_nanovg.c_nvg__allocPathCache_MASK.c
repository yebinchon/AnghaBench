#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int cpoints; int cpaths; int cverts; scalar_t__ nverts; int /*<<< orphan*/ * verts; scalar_t__ npaths; int /*<<< orphan*/ * paths; scalar_t__ npoints; int /*<<< orphan*/ * points; } ;
typedef  int /*<<< orphan*/  NVGvertex ;
typedef  int /*<<< orphan*/  NVGpoint ;
typedef  TYPE_1__ NVGpathCache ;
typedef  int /*<<< orphan*/  NVGpath ;

/* Variables and functions */
 int NVG_INIT_PATHS_SIZE ; 
 int NVG_INIT_POINTS_SIZE ; 
 int NVG_INIT_VERTS_SIZE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static NVGpathCache* FUNC3(void)
{
	NVGpathCache* c = (NVGpathCache*)FUNC0(sizeof(NVGpathCache));
	if (c == NULL) goto error;
	FUNC1(c, 0, sizeof(NVGpathCache));

	c->points = (NVGpoint*)FUNC0(sizeof(NVGpoint)*NVG_INIT_POINTS_SIZE);
	if (!c->points) goto error;
	c->npoints = 0;
	c->cpoints = NVG_INIT_POINTS_SIZE;

	c->paths = (NVGpath*)FUNC0(sizeof(NVGpath)*NVG_INIT_PATHS_SIZE);
	if (!c->paths) goto error;
	c->npaths = 0;
	c->cpaths = NVG_INIT_PATHS_SIZE;

	c->verts = (NVGvertex*)FUNC0(sizeof(NVGvertex)*NVG_INIT_VERTS_SIZE);
	if (!c->verts) goto error;
	c->nverts = 0;
	c->cverts = NVG_INIT_VERTS_SIZE;

	return c;
error:
	FUNC2(c);
	return NULL;
}