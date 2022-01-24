#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* gdRectPtr ;
struct TYPE_22__ {int width; int x; int height; int y; } ;
typedef  TYPE_2__ gdRect ;
struct TYPE_23__ {int y; int x; } ;
typedef  TYPE_3__ gdPointF ;
typedef  scalar_t__ gdInterpolationMethod ;
typedef  TYPE_4__* gdImagePtr ;
struct TYPE_24__ {scalar_t__ interpolation_id; int** tpixels; scalar_t__ alphaBlendingFlag; } ;
struct TYPE_21__ {int x; int y; int width; int height; } ;

/* Variables and functions */
 scalar_t__ GD_BICUBIC ; 
 scalar_t__ GD_BICUBIC_FIXED ; 
 scalar_t__ GD_BILINEAR_FIXED ; 
 scalar_t__ GD_DEFAULT ; 
 int GD_FALSE ; 
 scalar_t__ GD_NEAREST_NEIGHBOUR ; 
 int GD_TRUE ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_3__*,double*) ; 
 int /*<<< orphan*/  FUNC2 (double*,double const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__* const,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__* const,int*,int*,int*,int*) ; 
 int FUNC5 (TYPE_4__* const) ; 
 int FUNC6 (TYPE_4__* const) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__* const,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__* const,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,double const*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__* const,int,int,int) ; 

int FUNC12(gdImagePtr dst,
		  int dst_x, int dst_y,
		  const gdImagePtr src,
		  gdRectPtr src_region,
		  const double affine[6])
{
	int c1x,c1y,c2x,c2y;
	int backclip = 0;
	int backup_clipx1, backup_clipy1, backup_clipx2, backup_clipy2;
	register int x, y, src_offset_x, src_offset_y;
	double inv[6];
	int *dst_p;
	gdPointF pt, src_pt;
	gdRect bbox;
	int end_x, end_y;
	gdInterpolationMethod interpolation_id_bak = GD_DEFAULT;

	/* These methods use special implementations */
	if (src->interpolation_id == GD_BILINEAR_FIXED || src->interpolation_id == GD_BICUBIC_FIXED || src->interpolation_id == GD_NEAREST_NEIGHBOUR) {
		interpolation_id_bak = src->interpolation_id;

		FUNC8(src, GD_BICUBIC);
	}


	FUNC3(src, src_region);

	if (src_region->x > 0 || src_region->y > 0
		|| src_region->width < FUNC5(src)
		|| src_region->height < FUNC6(src)) {
		backclip = 1;

		FUNC4(src, &backup_clipx1, &backup_clipy1,
		&backup_clipx2, &backup_clipy2);

		FUNC7(src, src_region->x, src_region->y,
			src_region->x + src_region->width - 1,
			src_region->y + src_region->height - 1);
	}

	if (!FUNC10(src_region, affine, &bbox)) {
		if (backclip) {
			FUNC7(src, backup_clipx1, backup_clipy1,
					backup_clipx2, backup_clipy2);
		}
		FUNC8(src, interpolation_id_bak);
		return GD_FALSE;
	}

	FUNC4(dst, &c1x, &c1y, &c2x, &c2y);

	end_x = bbox.width  + FUNC0(bbox.x);
	end_y = bbox.height + FUNC0(bbox.y);

	/* Get inverse affine to let us work with destination -> source */
	FUNC2(inv, affine);

	src_offset_x =  src_region->x;
	src_offset_y =  src_region->y;

	if (dst->alphaBlendingFlag) {
		for (y = bbox.y; y <= end_y; y++) {
			pt.y = y + 0.5;
			for (x = 0; x <= end_x; x++) {
				pt.x = x + 0.5;
				FUNC1(&src_pt, &pt, inv);
				FUNC9(dst, dst_x + x, dst_y + y, FUNC11(src, src_offset_x + src_pt.x, src_offset_y + src_pt.y, 0));
			}
		}
	} else {
		for (y = 0; y <= end_y; y++) {
			pt.y = y + 0.5 + bbox.y;
			if ((dst_y + y) < 0 || ((dst_y + y) > FUNC6(dst) -1)) {
				continue;
			}
			dst_p = dst->tpixels[dst_y + y] + dst_x;

			for (x = 0; x <= end_x; x++) {
				pt.x = x + 0.5 + bbox.x;
				FUNC1(&src_pt, &pt, inv);

				if ((dst_x + x) < 0 || (dst_x + x) > (FUNC5(dst) - 1)) {
					break;
				}
				*(dst_p++) = FUNC11(src, src_offset_x + src_pt.x, src_offset_y + src_pt.y, -1);
			}
		}
	}

	/* Restore clip if required */
	if (backclip) {
		FUNC7(src, backup_clipx1, backup_clipy1,
				backup_clipx2, backup_clipy2);
	}

	FUNC8(src, interpolation_id_bak);
	return GD_TRUE;
}