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

/* Variables and functions */
#define  DEBUG1 140 
#define  DEBUG2 139 
#define  DEBUG3 138 
#define  DEBUG4 137 
#define  DEBUG5 136 
#define  ERROR 135 
#define  FATAL 134 
#define  INFO 133 
#define  LOG 132 
#define  LOG_SERVER_ONLY 131 
#define  NOTICE 130 
#define  PANIC 129 
#define  WARNING 128 
 char* FUNC0 (char*) ; 

__attribute__((used)) static const char *
FUNC1(int elevel)
{
	const char *prefix;

	switch (elevel)
	{
		case DEBUG1:
		case DEBUG2:
		case DEBUG3:
		case DEBUG4:
		case DEBUG5:
			prefix = FUNC0("DEBUG");
			break;
		case LOG:
		case LOG_SERVER_ONLY:
			prefix = FUNC0("LOG");
			break;
		case INFO:
			prefix = FUNC0("INFO");
			break;
		case NOTICE:
			prefix = FUNC0("NOTICE");
			break;
		case WARNING:
			prefix = FUNC0("WARNING");
			break;
		case ERROR:
			prefix = FUNC0("ERROR");
			break;
		case FATAL:
			prefix = FUNC0("FATAL");
			break;
		case PANIC:
			prefix = FUNC0("PANIC");
			break;
		default:
			prefix = "???";
			break;
	}

	return prefix;
}