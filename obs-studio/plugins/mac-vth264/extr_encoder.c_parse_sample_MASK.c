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
struct TYPE_4__ {int /*<<< orphan*/  num; int /*<<< orphan*/  array; int /*<<< orphan*/  da; } ;
struct darray {int dummy; } ;
struct TYPE_3__ {scalar_t__ num; struct darray da; } ;
struct vt_h264_encoder {int fps_den; TYPE_2__ packet_data; TYPE_1__ extra_data; scalar_t__ bframes; scalar_t__ fps_num; } ;
struct encoder_packet {int keyframe; int /*<<< orphan*/  size; int /*<<< orphan*/  data; void* dts; void* pts; int /*<<< orphan*/  type; } ;
typedef  void* int64_t ;
typedef  int Float64 ;
typedef  int /*<<< orphan*/  CMTime ;
typedef  int /*<<< orphan*/  CMSampleBufferRef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OBS_ENCODER_VIDEO ; 
 int /*<<< orphan*/  FUNC6 (struct vt_h264_encoder*,int /*<<< orphan*/ *,struct darray*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC9(struct vt_h264_encoder *enc, CMSampleBufferRef buffer,
			 struct encoder_packet *packet, CMTime off)
{
	CMTime pts = FUNC2(buffer);
	CMTime dts = FUNC1(buffer);

	pts = FUNC4(pts,
				      ((Float64)enc->fps_num / enc->fps_den));
	dts = FUNC4(dts,
				      ((Float64)enc->fps_num / enc->fps_den));

	// imitate x264's negative dts when bframes might have pts < dts
	if (enc->bframes)
		dts = FUNC5(dts, off);

	bool keyframe = FUNC8(buffer);

	FUNC7(enc->packet_data, 0);

	// If we are still looking for extra data
	struct darray *extra_data = NULL;
	if (enc->extra_data.num == 0)
		extra_data = &enc->extra_data.da;

	if (!FUNC6(enc, &enc->packet_data.da, extra_data,
				      buffer, keyframe))
		goto fail;

	packet->type = OBS_ENCODER_VIDEO;
	packet->pts = (int64_t)(FUNC3(pts));
	packet->dts = (int64_t)(FUNC3(dts));
	packet->data = enc->packet_data.array;
	packet->size = enc->packet_data.num;
	packet->keyframe = keyframe;

	FUNC0(buffer);
	return true;

fail:
	FUNC0(buffer);
	return false;
}