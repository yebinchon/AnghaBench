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
typedef  enum video_colorspace { ____Placeholder_video_colorspace } video_colorspace ;
typedef  int /*<<< orphan*/  VTCompressionSessionRef ;
typedef  int /*<<< orphan*/  OSStatus ;
typedef  int /*<<< orphan*/ * CFStringRef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * kCVImageBufferColorPrimaries_ITU_R_709_2 ; 
 int /*<<< orphan*/ * kCVImageBufferTransferFunction_ITU_R_709_2 ; 
 int /*<<< orphan*/  kVTCompressionPropertyKey_ColorPrimaries ; 
 int /*<<< orphan*/  kVTCompressionPropertyKey_TransferFunction ; 
 int /*<<< orphan*/  kVTCompressionPropertyKey_YCbCrMatrix ; 
 int /*<<< orphan*/  noErr ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static OSStatus FUNC3(VTCompressionSessionRef session,
				       enum video_colorspace cs)
{
	CFStringRef matrix = FUNC1(cs);
	OSStatus code;

	if (matrix != NULL) {
		FUNC0(FUNC2(
			session, kVTCompressionPropertyKey_ColorPrimaries,
			kCVImageBufferColorPrimaries_ITU_R_709_2));
		FUNC0(FUNC2(
			session, kVTCompressionPropertyKey_TransferFunction,
			kCVImageBufferTransferFunction_ITU_R_709_2));
		FUNC0(FUNC2(
			session, kVTCompressionPropertyKey_YCbCrMatrix,
			matrix));
	}

	return noErr;
}