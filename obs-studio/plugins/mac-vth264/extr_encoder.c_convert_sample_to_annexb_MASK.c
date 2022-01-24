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
struct vt_h264_encoder {int dummy; } ;
struct darray {int dummy; } ;
typedef  scalar_t__ OSStatus ;
typedef  int /*<<< orphan*/  CMSampleBufferRef ;
typedef  int /*<<< orphan*/  CMFormatDescriptionRef ;
typedef  int /*<<< orphan*/  CMBlockBufferRef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t*,int*) ; 
 int /*<<< orphan*/  LOG_ERROR ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct vt_h264_encoder*,struct darray*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct vt_h264_encoder*,int /*<<< orphan*/ ,size_t,struct darray*,struct darray*) ; 
 scalar_t__ kCMFormatDescriptionBridgeError_InvalidParameter_ ; 
 scalar_t__ kCMFormatDescriptionError_InvalidParameter ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct vt_h264_encoder*,char*,scalar_t__) ; 
 scalar_t__ noErr ; 

__attribute__((used)) static bool FUNC7(struct vt_h264_encoder *enc,
				     struct darray *packet,
				     struct darray *extra_data,
				     CMSampleBufferRef buffer, bool keyframe)
{
	OSStatus code;
	CMFormatDescriptionRef format_desc =
		FUNC1(buffer);

	size_t param_count;
	int nal_length_bytes;
	code = FUNC2(
		format_desc, 0, NULL, NULL, &param_count, &nal_length_bytes);
	// it is not clear what errors this function can return
	// so we check the two most reasonable
	if (code == kCMFormatDescriptionBridgeError_InvalidParameter_ ||
	    code == kCMFormatDescriptionError_InvalidParameter) {
		FUNC3(LOG_WARNING, "assuming 2 parameter sets "
				     "and 4 byte NAL length header");
		param_count = 2;
		nal_length_bytes = 4;

	} else if (code != noErr) {
		FUNC6(LOG_ERROR, enc,
			     "getting parameter count from sample", code);
		return false;
	}

	if (keyframe &&
	    !FUNC5(enc, format_desc, param_count, packet, extra_data))
		return false;

	CMBlockBufferRef block = FUNC0(buffer);
	FUNC4(enc, packet, block, nal_length_bytes);

	return true;
}