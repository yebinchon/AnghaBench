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
typedef  int /*<<< orphan*/  x264_picture_t ;
typedef  int /*<<< orphan*/  x264_nal_t ;
struct obs_x264 {int /*<<< orphan*/  context; } ;
struct encoder_packet {int dummy; } ;
struct encoder_frame {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct obs_x264*,int /*<<< orphan*/ *,struct encoder_frame*) ; 
 int /*<<< orphan*/  FUNC1 (struct obs_x264*,struct encoder_packet*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC4(void *data, struct encoder_frame *frame,
			    struct encoder_packet *packet,
			    bool *received_packet)
{
	struct obs_x264 *obsx264 = data;
	x264_nal_t *nals;
	int nal_count;
	int ret;
	x264_picture_t pic, pic_out;

	if (!frame || !packet || !received_packet)
		return false;

	if (frame)
		FUNC0(obsx264, &pic, frame);

	ret = FUNC3(obsx264->context, &nals, &nal_count,
				  (frame ? &pic : NULL), &pic_out);
	if (ret < 0) {
		FUNC2("encode failed");
		return false;
	}

	*received_packet = (nal_count != 0);
	FUNC1(obsx264, packet, nals, nal_count, &pic_out);

	return true;
}