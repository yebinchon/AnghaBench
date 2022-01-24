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
typedef  int /*<<< orphan*/  CFStringRef ;
typedef  int /*<<< orphan*/  CFMutableDictionaryRef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  ENABLE_HW_ACCEL ; 
 int /*<<< orphan*/  ENCODER_ID ; 
 int /*<<< orphan*/  REQUIRE_HW_ACCEL ; 
 int /*<<< orphan*/  kCFAllocatorDefault ; 
 int /*<<< orphan*/  kCFBooleanFalse ; 
 int /*<<< orphan*/  kCFBooleanTrue ; 
 int /*<<< orphan*/  kCFTypeDictionaryKeyCallBacks ; 
 int /*<<< orphan*/  kCFTypeDictionaryValueCallBacks ; 

__attribute__((used)) static inline CFMutableDictionaryRef
FUNC4(const char *vt_encoder_id)
{
	CFMutableDictionaryRef encoder_spec = FUNC1(
		kCFAllocatorDefault, 3, &kCFTypeDictionaryKeyCallBacks,
		&kCFTypeDictionaryValueCallBacks);

	CFStringRef id =
		FUNC3(NULL, vt_encoder_id);
	FUNC0(encoder_spec, ENCODER_ID, id);
	FUNC2(id);

	FUNC0(encoder_spec, ENABLE_HW_ACCEL, kCFBooleanTrue);
	FUNC0(encoder_spec, REQUIRE_HW_ACCEL, kCFBooleanFalse);

	return encoder_spec;
}