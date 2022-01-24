#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct video_scale_info {scalar_t__ width; scalar_t__ height; int /*<<< orphan*/  range; int /*<<< orphan*/  colorspace; int /*<<< orphan*/  format; } ;
struct video_output_info {scalar_t__ width; scalar_t__ height; int /*<<< orphan*/  range; int /*<<< orphan*/  colorspace; int /*<<< orphan*/  format; } ;
struct TYPE_4__ {int /*<<< orphan*/  data; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* get_video_info ) (int /*<<< orphan*/ ,struct video_scale_info*) ;} ;
struct obs_encoder {TYPE_2__ context; TYPE_1__ info; int /*<<< orphan*/  media; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct obs_encoder*) ; 
 scalar_t__ FUNC1 (struct obs_encoder*) ; 
 int /*<<< orphan*/  FUNC2 (struct obs_encoder*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct video_scale_info*) ; 
 struct video_output_info* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC5(struct obs_encoder *encoder,
				  struct video_scale_info *info)
{
	const struct video_output_info *voi;
	voi = FUNC4(encoder->media);

	info->format = voi->format;
	info->colorspace = voi->colorspace;
	info->range = voi->range;
	info->width = FUNC1(encoder);
	info->height = FUNC0(encoder);

	if (encoder->info.get_video_info)
		encoder->info.get_video_info(encoder->context.data, info);

	if (info->width != voi->width || info->height != voi->height)
		FUNC2(encoder, info->width, info->height);
}