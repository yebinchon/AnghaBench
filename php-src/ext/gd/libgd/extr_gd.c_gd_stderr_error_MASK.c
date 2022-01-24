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
typedef  int /*<<< orphan*/  va_list ;

/* Variables and functions */
#define  GD_DEBUG 132 
#define  GD_ERROR 131 
#define  GD_INFO 130 
#define  GD_NOTICE 129 
#define  GD_WARNING 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

void FUNC3(int priority, const char *format, va_list args)
{
	switch (priority) {
	case GD_ERROR:
		FUNC1("GD Error: ", stderr);
		break;
	case GD_WARNING:
		FUNC1("GD Warning: ", stderr);
		break;
	case GD_NOTICE:
		FUNC1("GD Notice: ", stderr);
		break;
#ifndef PHP_WIN32
	case GD_INFO:
		FUNC1("GD Info: ", stderr);
		break;
	case GD_DEBUG:
		FUNC1("GD Debug: ", stderr);
		break;
#endif
	}
	FUNC2(stderr, format, args);
	FUNC0(stderr);
}