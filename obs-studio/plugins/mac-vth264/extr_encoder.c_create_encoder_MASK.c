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
struct vt_h264_encoder {int hw_enc; float keyint; float fps_den; int /*<<< orphan*/  session; int /*<<< orphan*/  colorspace; int /*<<< orphan*/  rc_max_bitrate_window; int /*<<< orphan*/  rc_max_bitrate; int /*<<< orphan*/  limit_bitrate; int /*<<< orphan*/  bitrate; int /*<<< orphan*/  profile; scalar_t__ bframes; scalar_t__ fps_num; int /*<<< orphan*/  queue; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  vt_encoder_id; } ;
typedef  int /*<<< orphan*/  VTCompressionSessionRef ;
typedef  scalar_t__ OSStatus ;
typedef  int /*<<< orphan*/ * CFDictionaryRef ;
typedef  int /*<<< orphan*/ * CFBooleanRef ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 float FUNC7 (float) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (struct vt_h264_encoder*) ; 
 int /*<<< orphan*/  kCFAllocatorDefault ; 
 int /*<<< orphan*/  kCFBooleanFalse ; 
 int /*<<< orphan*/  kCFBooleanTrue ; 
 int /*<<< orphan*/  kCMVideoCodecType_H264 ; 
 int /*<<< orphan*/  kVTCompressionPropertyKey_AllowFrameReordering ; 
 int /*<<< orphan*/  kVTCompressionPropertyKey_ExpectedFrameRate ; 
 int /*<<< orphan*/  kVTCompressionPropertyKey_MaxKeyFrameInterval ; 
 int /*<<< orphan*/  kVTCompressionPropertyKey_MaxKeyFrameIntervalDuration ; 
 int /*<<< orphan*/  kVTCompressionPropertyKey_ProfileLevel ; 
 int /*<<< orphan*/  kVTCompressionPropertyKey_RealTime ; 
 int /*<<< orphan*/  kVTCompressionPropertyKey_UsingHardwareAcceleratedVideoEncoder ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct vt_h264_encoder*,char*,scalar_t__) ; 
 scalar_t__ noErr ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sample_encoded_callback ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,float) ; 

__attribute__((used)) static bool FUNC16(struct vt_h264_encoder *enc)
{
	OSStatus code;

	VTCompressionSessionRef s;

	CFDictionaryRef encoder_spec = FUNC8(enc->vt_encoder_id);
	CFDictionaryRef pixbuf_spec = FUNC9(enc);

	FUNC2(FUNC3(
		kCFAllocatorDefault, enc->width, enc->height,
		kCMVideoCodecType_H264, encoder_spec, pixbuf_spec, NULL,
		&sample_encoded_callback, enc->queue, &s));

	FUNC1(encoder_spec);
	FUNC1(pixbuf_spec);

	CFBooleanRef b = NULL;
	code = FUNC5(
		s,
		kVTCompressionPropertyKey_UsingHardwareAcceleratedVideoEncoder,
		NULL, &b);

	if (code == noErr && (enc->hw_enc = FUNC0(b)))
		FUNC6(LOG_INFO, "session created with hardware encoding");
	else
		enc->hw_enc = false;

	if (b != NULL)
		FUNC1(b);

	FUNC2(FUNC15(
		s, kVTCompressionPropertyKey_MaxKeyFrameIntervalDuration,
		enc->keyint));
	FUNC2(FUNC15(
		s, kVTCompressionPropertyKey_MaxKeyFrameInterval,
		enc->keyint * ((float)enc->fps_num / enc->fps_den)));
	FUNC2(FUNC15(
		s, kVTCompressionPropertyKey_ExpectedFrameRate,
		FUNC7((float)enc->fps_num / enc->fps_den)));
	FUNC2(FUNC14(
		s, kVTCompressionPropertyKey_AllowFrameReordering,
		enc->bframes ? kCFBooleanTrue : kCFBooleanFalse));

	// This can fail depending on hardware configuration
	code = FUNC14(s, kVTCompressionPropertyKey_RealTime,
				kCFBooleanTrue);
	if (code != noErr)
		FUNC10(LOG_WARNING, enc,
			     "setting "
			     "kVTCompressionPropertyKey_RealTime, "
			     "frame delay might be increased",
			     code);

	FUNC2(FUNC14(s, kVTCompressionPropertyKey_ProfileLevel,
				      FUNC11(enc->profile)));

	FUNC2(FUNC12(s, enc->bitrate, enc->limit_bitrate,
					 enc->rc_max_bitrate,
					 enc->rc_max_bitrate_window));

	FUNC2(FUNC13(s, enc->colorspace));

	FUNC2(FUNC4(s));

	enc->session = s;

	return true;

fail:
	if (encoder_spec != NULL)
		FUNC1(encoder_spec);
	if (pixbuf_spec != NULL)
		FUNC1(pixbuf_spec);

	return false;
}