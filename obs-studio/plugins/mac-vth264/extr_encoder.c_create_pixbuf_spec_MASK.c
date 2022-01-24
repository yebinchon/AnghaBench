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
struct vt_h264_encoder {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  vt_pix_fmt; } ;
typedef  int /*<<< orphan*/  CFNumberRef ;
typedef  int /*<<< orphan*/  CFMutableDictionaryRef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kCFAllocatorDefault ; 
 int /*<<< orphan*/  kCFNumberSInt32Type ; 
 int /*<<< orphan*/  kCFTypeDictionaryKeyCallBacks ; 
 int /*<<< orphan*/  kCFTypeDictionaryValueCallBacks ; 
 int /*<<< orphan*/  kCVPixelBufferHeightKey ; 
 int /*<<< orphan*/  kCVPixelBufferPixelFormatTypeKey ; 
 int /*<<< orphan*/  kCVPixelBufferWidthKey ; 

__attribute__((used)) static inline CFMutableDictionaryRef
FUNC4(struct vt_h264_encoder *enc)
{
	CFMutableDictionaryRef pixbuf_spec = FUNC1(
		kCFAllocatorDefault, 3, &kCFTypeDictionaryKeyCallBacks,
		&kCFTypeDictionaryValueCallBacks);

	CFNumberRef n =
		FUNC2(NULL, kCFNumberSInt32Type, &enc->vt_pix_fmt);
	FUNC0(pixbuf_spec, kCVPixelBufferPixelFormatTypeKey, n);
	FUNC3(n);

	n = FUNC2(NULL, kCFNumberSInt32Type, &enc->width);
	FUNC0(pixbuf_spec, kCVPixelBufferWidthKey, n);
	FUNC3(n);

	n = FUNC2(NULL, kCFNumberSInt32Type, &enc->height);
	FUNC0(pixbuf_spec, kCVPixelBufferHeightKey, n);
	FUNC3(n);

	return pixbuf_spec;
}