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
typedef  int /*<<< orphan*/  video_t ;
struct video_output_info {int fps_num; } ;
struct obs_qsv {int /*<<< orphan*/  context; int /*<<< orphan*/  encoder; } ;
struct encoder_packet {int dummy; } ;
struct encoder_frame {int pts; int /*<<< orphan*/ * linesize; int /*<<< orphan*/ ** data; } ;
typedef  int mfxU64 ;
typedef  int /*<<< orphan*/  mfxBitstream ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  g_QsvCs ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct obs_qsv*,struct encoder_packet*,int /*<<< orphan*/ *,int,int*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 struct video_output_info* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static bool FUNC7(void *data, struct encoder_frame *frame,
			   struct encoder_packet *packet, bool *received_packet)
{
	struct obs_qsv *obsqsv = data;

	if (!frame || !packet || !received_packet)
		return false;

	FUNC0(&g_QsvCs);

	video_t *video = FUNC2(obsqsv->encoder);
	const struct video_output_info *voi = FUNC5(video);

	mfxBitstream *pBS = NULL;

	int ret;

	mfxU64 qsvPTS = frame->pts * 90000 / voi->fps_num;

	// FIXME: remove null check from the top of this function
	// if we actually do expect null frames to complete output.
	if (frame)
		ret = FUNC4(obsqsv->context, qsvPTS,
					 frame->data[0], frame->data[1],
					 frame->linesize[0], frame->linesize[1],
					 &pBS);
	else
		ret = FUNC4(obsqsv->context, qsvPTS, NULL, NULL, 0,
					 0, &pBS);

	if (ret < 0) {
		FUNC6("encode failed");
		FUNC1(&g_QsvCs);
		return false;
	}

	FUNC3(obsqsv, packet, pBS, voi->fps_num, received_packet);

	FUNC1(&g_QsvCs);

	return true;
}