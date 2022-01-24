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
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  VTCompressionSessionRef ;
typedef  int /*<<< orphan*/  OSStatus ;
typedef  int /*<<< orphan*/  CFStringRef ;
typedef  int /*<<< orphan*/  CFNumberRef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kCFNumberSInt32Type ; 

__attribute__((used)) static OSStatus FUNC3(VTCompressionSessionRef session,
				     CFStringRef key, int32_t val)
{
	CFNumberRef n = FUNC0(NULL, kCFNumberSInt32Type, &val);
	OSStatus code = FUNC2(session, key, n);
	FUNC1(n);

	return code;
}