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
typedef  int /*<<< orphan*/  OSStatus ;
typedef  int /*<<< orphan*/  CFStringRef ;
typedef  int /*<<< orphan*/  CFErrorRef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kCFAllocatorDefault ; 
 int /*<<< orphan*/  kCFErrorDomainOSStatus ; 
 int /*<<< orphan*/  kCFStringEncodingUTF8 ; 

__attribute__((used)) static void FUNC7(int log_level, struct vt_h264_encoder *enc,
			 const char *context, OSStatus code)
{
	char *c_str = NULL;
	CFErrorRef err = FUNC1(kCFAllocatorDefault,
				       kCFErrorDomainOSStatus, code, NULL);
	CFStringRef str = FUNC0(err);

	c_str = FUNC6(str, kCFStringEncodingUTF8);
	if (c_str) {
		if (enc)
			FUNC3(log_level, "Error in %s: %s", context, c_str);
		else
			FUNC4(log_level, "Error in %s: %s", context, c_str);
	}

	FUNC5(c_str);
	FUNC2(str);
	FUNC2(err);
}