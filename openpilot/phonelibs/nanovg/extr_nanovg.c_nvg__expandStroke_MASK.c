#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_35__   TYPE_5__ ;
typedef  struct TYPE_34__   TYPE_4__ ;
typedef  struct TYPE_33__   TYPE_3__ ;
typedef  struct TYPE_32__   TYPE_2__ ;
typedef  struct TYPE_31__   TYPE_1__ ;

/* Type definitions */
struct TYPE_35__ {float fringeWidth; int /*<<< orphan*/  tessTol; TYPE_3__* cache; } ;
struct TYPE_34__ {scalar_t__ closed; int count; int nbevel; size_t first; int nstroke; TYPE_1__* stroke; scalar_t__ nfill; scalar_t__ fill; } ;
struct TYPE_33__ {int npaths; TYPE_2__* points; TYPE_4__* paths; } ;
struct TYPE_32__ {float x; float y; int flags; float dmx; float dmy; } ;
struct TYPE_31__ {float x; float y; } ;
typedef  TYPE_1__ NVGvertex ;
typedef  TYPE_2__ NVGpoint ;
typedef  TYPE_3__ NVGpathCache ;
typedef  TYPE_4__ NVGpath ;
typedef  TYPE_5__ NVGcontext ;

/* Variables and functions */
 int NVG_BUTT ; 
 int /*<<< orphan*/  NVG_PI ; 
 int NVG_PR_INNERBEVEL ; 
 int NVG_PT_BEVEL ; 
 int NVG_ROUND ; 
 int NVG_SQUARE ; 
 TYPE_1__* FUNC0 (TYPE_5__*,int) ; 
 TYPE_1__* FUNC1 (TYPE_1__*,TYPE_2__*,TYPE_2__*,float,float,int /*<<< orphan*/ ,int,float) ; 
 TYPE_1__* FUNC2 (TYPE_1__*,TYPE_2__*,float,float,float,float,float) ; 
 TYPE_1__* FUNC3 (TYPE_1__*,TYPE_2__*,float,float,float,float,float) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,float,int,float) ; 
 int FUNC5 (float,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (float*,float*) ; 
 TYPE_1__* FUNC7 (TYPE_1__*,TYPE_2__*,float,float,float,int,float) ; 
 TYPE_1__* FUNC8 (TYPE_1__*,TYPE_2__*,float,float,float,int,float) ; 
 TYPE_1__* FUNC9 (TYPE_1__*,TYPE_2__*,TYPE_2__*,float,float,int /*<<< orphan*/ ,int,int,float) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,float,float,int,int) ; 

__attribute__((used)) static int FUNC11(NVGcontext* ctx, float w, int lineCap, int lineJoin, float miterLimit)
{
	NVGpathCache* cache = ctx->cache;
	NVGvertex* verts;
	NVGvertex* dst;
	int cverts, i, j;
	float aa = ctx->fringeWidth;
	int ncap = FUNC5(w, NVG_PI, ctx->tessTol);	// Calculate divisions per half circle.

	FUNC4(ctx, w, lineJoin, miterLimit);

	// Calculate max vertex usage.
	cverts = 0;
	for (i = 0; i < cache->npaths; i++) {
		NVGpath* path = &cache->paths[i];
		int loop = (path->closed == 0) ? 0 : 1;
		if (lineJoin == NVG_ROUND)
			cverts += (path->count + path->nbevel*(ncap+2) + 1) * 2; // plus one for loop
		else
			cverts += (path->count + path->nbevel*5 + 1) * 2; // plus one for loop
		if (loop == 0) {
			// space for caps
			if (lineCap == NVG_ROUND) {
				cverts += (ncap*2 + 2)*2;
			} else {
				cverts += (3+3)*2;
			}
		}
	}

	verts = FUNC0(ctx, cverts);
	if (verts == NULL) return 0;

	for (i = 0; i < cache->npaths; i++) {
		NVGpath* path = &cache->paths[i];
		NVGpoint* pts = &cache->points[path->first];
		NVGpoint* p0;
		NVGpoint* p1;
		int s, e, loop;
		float dx, dy;

		path->fill = 0;
		path->nfill = 0;

		// Calculate fringe or stroke
		loop = (path->closed == 0) ? 0 : 1;
		dst = verts;
		path->stroke = dst;

		if (loop) {
			// Looping
			p0 = &pts[path->count-1];
			p1 = &pts[0];
			s = 0;
			e = path->count;
		} else {
			// Add cap
			p0 = &pts[0];
			p1 = &pts[1];
			s = 1;
			e = path->count-1;
		}

		if (loop == 0) {
			// Add cap
			dx = p1->x - p0->x;
			dy = p1->y - p0->y;
			FUNC6(&dx, &dy);
			if (lineCap == NVG_BUTT)
				dst = FUNC3(dst, p0, dx, dy, w, -aa*0.5f, aa);
			else if (lineCap == NVG_BUTT || lineCap == NVG_SQUARE)
				dst = FUNC3(dst, p0, dx, dy, w, w-aa, aa);
			else if (lineCap == NVG_ROUND)
				dst = FUNC8(dst, p0, dx, dy, w, ncap, aa);
		}

		for (j = s; j < e; ++j) {
			if ((p1->flags & (NVG_PT_BEVEL | NVG_PR_INNERBEVEL)) != 0) {
				if (lineJoin == NVG_ROUND) {
					dst = FUNC9(dst, p0, p1, w, w, 0, 1, ncap, aa);
				} else {
					dst = FUNC1(dst, p0, p1, w, w, 0, 1, aa);
				}
			} else {
				FUNC10(dst, p1->x + (p1->dmx * w), p1->y + (p1->dmy * w), 0,1); dst++;
				FUNC10(dst, p1->x - (p1->dmx * w), p1->y - (p1->dmy * w), 1,1); dst++;
			}
			p0 = p1++;
		}

		if (loop) {
			// Loop it
			FUNC10(dst, verts[0].x, verts[0].y, 0,1); dst++;
			FUNC10(dst, verts[1].x, verts[1].y, 1,1); dst++;
		} else {
			// Add cap
			dx = p1->x - p0->x;
			dy = p1->y - p0->y;
			FUNC6(&dx, &dy);
			if (lineCap == NVG_BUTT)
				dst = FUNC2(dst, p1, dx, dy, w, -aa*0.5f, aa);
			else if (lineCap == NVG_BUTT || lineCap == NVG_SQUARE)
				dst = FUNC2(dst, p1, dx, dy, w, w-aa, aa);
			else if (lineCap == NVG_ROUND)
				dst = FUNC7(dst, p1, dx, dy, w, ncap, aa);
		}

		path->nstroke = (int)(dst - verts);

		verts = dst;
	}

	return 1;
}