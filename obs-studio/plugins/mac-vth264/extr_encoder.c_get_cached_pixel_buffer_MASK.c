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
struct vt_h264_encoder {int /*<<< orphan*/  colorspace; int /*<<< orphan*/  session; } ;
typedef  int /*<<< orphan*/  OSStatus ;
typedef  int /*<<< orphan*/  CVPixelBufferRef ;
typedef  int /*<<< orphan*/  CVPixelBufferPoolRef ;
typedef  int /*<<< orphan*/  CFStringRef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kCVAttachmentMode_ShouldPropagate ; 
 int /*<<< orphan*/  kCVImageBufferColorPrimariesKey ; 
 int /*<<< orphan*/  kCVImageBufferColorPrimaries_ITU_R_709_2 ; 
 int /*<<< orphan*/  kCVImageBufferTransferFunctionKey ; 
 int /*<<< orphan*/  kCVImageBufferTransferFunction_ITU_R_709_2 ; 
 int /*<<< orphan*/  kCVImageBufferYCbCrMatrixKey ; 
 int kCVReturnError ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

bool FUNC5(struct vt_h264_encoder *enc, CVPixelBufferRef *buf)
{
	OSStatus code;
	CVPixelBufferPoolRef pool =
		FUNC3(enc->session);
	if (!pool)
		return kCVReturnError;

	CVPixelBufferRef pixbuf;
	FUNC2(FUNC1(NULL, pool, &pixbuf));

	// Why aren't these already set on the pixel buffer?
	// I would have expected pixel buffers from the session's
	// pool to have the correct color space stuff set

	CFStringRef matrix = FUNC4(enc->colorspace);

	FUNC0(pixbuf, kCVImageBufferYCbCrMatrixKey, matrix,
			      kCVAttachmentMode_ShouldPropagate);
	FUNC0(pixbuf, kCVImageBufferColorPrimariesKey,
			      kCVImageBufferColorPrimaries_ITU_R_709_2,
			      kCVAttachmentMode_ShouldPropagate);
	FUNC0(pixbuf, kCVImageBufferTransferFunctionKey,
			      kCVImageBufferTransferFunction_ITU_R_709_2,
			      kCVAttachmentMode_ShouldPropagate);

	*buf = pixbuf;
	return true;

fail:
	return false;
}