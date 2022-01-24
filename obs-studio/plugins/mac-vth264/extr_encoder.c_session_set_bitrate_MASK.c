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
typedef  float int32_t ;
typedef  int /*<<< orphan*/  VTCompressionSessionRef ;
typedef  int /*<<< orphan*/  OSStatus ;
typedef  int /*<<< orphan*/  CFNumberRef ;
typedef  int /*<<< orphan*/  CFMutableArrayRef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,float*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kCFAllocatorDefault ; 
 int /*<<< orphan*/  kCFNumberFloatType ; 
 int /*<<< orphan*/  kCFNumberIntType ; 
 int /*<<< orphan*/  kCFTypeArrayCallBacks ; 
 int /*<<< orphan*/  kVTCompressionPropertyKey_AverageBitRate ; 
 int /*<<< orphan*/  kVTCompressionPropertyKey_DataRateLimits ; 
 int /*<<< orphan*/  kVTPropertyNotSupportedErr ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  noErr ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static OSStatus FUNC8(VTCompressionSessionRef session,
				    int new_bitrate, bool limit_bitrate,
				    int max_bitrate, float max_bitrate_window)
{
	OSStatus code;

	FUNC4(FUNC7(
		session, kVTCompressionPropertyKey_AverageBitRate,
		new_bitrate * 1000));

	if (limit_bitrate) {
		int32_t cpb_size = max_bitrate * 125 * max_bitrate_window;

		CFNumberRef cf_cpb_size =
			FUNC2(NULL, kCFNumberIntType, &cpb_size);
		CFNumberRef cf_cpb_window_s = FUNC2(
			NULL, kCFNumberFloatType, &max_bitrate_window);

		CFMutableArrayRef rate_control = FUNC1(
			kCFAllocatorDefault, 2, &kCFTypeArrayCallBacks);

		FUNC0(rate_control, cf_cpb_size);
		FUNC0(rate_control, cf_cpb_window_s);

		code = FUNC6(
			session, kVTCompressionPropertyKey_DataRateLimits,
			rate_control);

		FUNC3(cf_cpb_size);
		FUNC3(cf_cpb_window_s);
		FUNC3(rate_control);

		if (code == kVTPropertyNotSupportedErr) {
			FUNC5(LOG_WARNING, NULL,
				     "setting DataRateLimits on session", code);
			return noErr;
		}
	}

	return noErr;
}