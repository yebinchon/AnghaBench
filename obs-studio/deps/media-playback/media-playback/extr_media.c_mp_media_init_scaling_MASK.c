#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* decoder; } ;
struct TYPE_7__ {int /*<<< orphan*/  scale_format; TYPE_2__ v; int /*<<< orphan*/  scale_linesizes; int /*<<< orphan*/  scale_pic; int /*<<< orphan*/  swscale; } ;
typedef  TYPE_3__ mp_media_t ;
struct TYPE_5__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  pix_fmt; int /*<<< orphan*/  color_range; int /*<<< orphan*/  colorspace; } ;

/* Variables and functions */
 int /*<<< orphan*/  FIXED_1_0 ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  SWS_FAST_BILINEAR ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int const*,int,int const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC7(mp_media_t *m)
{
	int space = FUNC2(m->v.decoder->colorspace);
	int range = FUNC3(m->v.decoder->color_range);
	const int *coeff = FUNC5(space);

	m->swscale = FUNC4(NULL, m->v.decoder->width,
					  m->v.decoder->height,
					  m->v.decoder->pix_fmt,
					  m->v.decoder->width,
					  m->v.decoder->height, m->scale_format,
					  SWS_FAST_BILINEAR, NULL, NULL, NULL);
	if (!m->swscale) {
		FUNC1(LOG_WARNING, "MP: Failed to initialize scaler");
		return false;
	}

	FUNC6(m->swscale, coeff, range, coeff, range, 0,
				 FIXED_1_0, FIXED_1_0);

	int ret = FUNC0(m->scale_pic, m->scale_linesizes,
				 m->v.decoder->width, m->v.decoder->height,
				 m->scale_format, 1);
	if (ret < 0) {
		FUNC1(LOG_WARNING, "MP: Failed to create scale pic data");
		return false;
	}

	return true;
}