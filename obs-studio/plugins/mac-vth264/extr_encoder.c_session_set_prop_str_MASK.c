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
typedef  int /*<<< orphan*/  VTCompressionSessionRef ;
typedef  int /*<<< orphan*/  OSStatus ;
typedef  int /*<<< orphan*/  CFStringRef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static OSStatus FUNC3(VTCompressionSessionRef session,
				     CFStringRef key, char *val)
{
	CFStringRef s = FUNC1(NULL, val);
	OSStatus code = FUNC2(session, key, s);
	FUNC0(s);

	return code;
}