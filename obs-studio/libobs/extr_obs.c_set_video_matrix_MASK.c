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
struct vec4 {int dummy; } ;
struct obs_video_info {int /*<<< orphan*/  range; int /*<<< orphan*/  colorspace; int /*<<< orphan*/  output_format; } ;
struct obs_core_video {int /*<<< orphan*/  color_matrix; } ;
struct matrix4 {struct vec4 y; struct vec4 x; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct matrix4*) ; 
 int /*<<< orphan*/  FUNC2 (struct matrix4*,struct matrix4*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct matrix4*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,float*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC5(struct obs_core_video *video,
				    struct obs_video_info *ovi)
{
	struct matrix4 mat;
	struct vec4 r_row;

	if (FUNC0(ovi->output_format)) {
		FUNC4(ovi->colorspace, ovi->range,
					    (float *)&mat, NULL, NULL);
		FUNC2(&mat, &mat);

		/* swap R and G */
		r_row = mat.x;
		mat.x = mat.y;
		mat.y = r_row;
	} else {
		FUNC1(&mat);
	}

	FUNC3(video->color_matrix, &mat, sizeof(float) * 16);
}