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
typedef  scalar_t__ CFIndex ;

/* Variables and functions */
 int /*<<< orphan*/  CA_CFSTR_ENCODING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 

char *FUNC4(CFStringRef cfstr)
{
    CFIndex size =
        FUNC2(
            FUNC1(cfstr), CA_CFSTR_ENCODING) + 1;
    char *buffer = FUNC3(NULL, size);
    FUNC0(cfstr, buffer, size, CA_CFSTR_ENCODING);
    return buffer;
}