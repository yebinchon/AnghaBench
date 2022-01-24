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
typedef  int /*<<< orphan*/  uint8_t ;
struct vt_h264_encoder {int /*<<< orphan*/  queue; int /*<<< orphan*/  session; int /*<<< orphan*/  fps_num; int /*<<< orphan*/  fps_den; } ;
struct encoder_packet {int dummy; } ;
struct encoder_frame {int pts; int /*<<< orphan*/ * linesize; int /*<<< orphan*/ ** data; } ;
typedef  int /*<<< orphan*/  OSStatus ;
typedef  int /*<<< orphan*/ * CVPixelBufferRef ;
typedef  int /*<<< orphan*/  CMTime ;
typedef  int /*<<< orphan*/ * CMSampleBufferRef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 size_t FUNC4 (int /*<<< orphan*/ *,int) ; 
 size_t FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOG_ERROR ; 
 int MAX_AV_PLANES ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct vt_h264_encoder*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct vt_h264_encoder*,int /*<<< orphan*/ *,struct encoder_packet*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC14(void *data, struct encoder_frame *frame,
			   struct encoder_packet *packet, bool *received_packet)
{
	struct vt_h264_encoder *enc = data;

	OSStatus code;

	CMTime dur = FUNC1(enc->fps_den, enc->fps_num);
	CMTime off = FUNC2(dur, 2);
	CMTime pts = FUNC2(dur, frame->pts);

	CVPixelBufferRef pixbuf = NULL;

	if (!FUNC11(enc, &pixbuf)) {
		FUNC10(LOG_ERROR, "Unable to create pixel buffer");
		goto fail;
	}

	FUNC8(FUNC6(pixbuf, 0));

	for (int i = 0; i < MAX_AV_PLANES; i++) {
		if (frame->data[i] == NULL)
			break;
		uint8_t *p = (uint8_t *)FUNC3(
			pixbuf, i);
		uint8_t *f = frame->data[i];
		size_t plane_linesize =
			FUNC4(pixbuf, i);
		size_t plane_height = FUNC5(pixbuf, i);

		for (size_t j = 0; j < plane_height; j++) {
			FUNC12(p, f, frame->linesize[i]);
			p += plane_linesize;
			f += frame->linesize[i];
		}
	}

	FUNC8(FUNC7(pixbuf, 0));

	FUNC8(FUNC9(enc->session, pixbuf, pts,
						     dur, NULL, pixbuf, NULL));

	CMSampleBufferRef buffer =
		(CMSampleBufferRef)FUNC0(enc->queue);

	// No samples waiting in the queue
	if (buffer == NULL)
		return true;

	*received_packet = true;
	return FUNC13(enc, buffer, packet, off);

fail:
	return false;
}