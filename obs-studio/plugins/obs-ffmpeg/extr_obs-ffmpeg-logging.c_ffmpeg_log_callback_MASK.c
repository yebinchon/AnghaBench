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
struct log_context {char* str; int /*<<< orphan*/  print_prefix; } ;

/* Variables and functions */
#define  AV_LOG_DEBUG 134 
#define  AV_LOG_ERROR 133 
#define  AV_LOG_FATAL 132 
#define  AV_LOG_INFO 131 
#define  AV_LOG_PANIC 130 
#define  AV_LOG_VERBOSE 129 
#define  AV_LOG_WARNING 128 
 int LOG_DEBUG ; 
 int LOG_ERROR ; 
 int LOG_INFO ; 
 int LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (void*,int,char const*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*) ; 
 struct log_context* FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (struct log_context*) ; 
 int FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(void *context, int level, const char *format,
				va_list args)
{
	if (format == NULL)
		return;

	struct log_context *log_context = FUNC2(context);

	char *str = log_context->str;

	FUNC0(context, level, format, args, str + FUNC4(str),
			   (int)(sizeof(log_context->str) - FUNC4(str)),
			   &log_context->print_prefix);

	int obs_level;
	switch (level) {
	case AV_LOG_PANIC:
	case AV_LOG_FATAL:
		obs_level = LOG_ERROR;
		break;
	case AV_LOG_ERROR:
	case AV_LOG_WARNING:
		obs_level = LOG_WARNING;
		break;
	case AV_LOG_INFO:
	case AV_LOG_VERBOSE:
		obs_level = LOG_INFO;
		break;
	case AV_LOG_DEBUG:
	default:
		obs_level = LOG_DEBUG;
	}

	if (!log_context->print_prefix)
		return;

	char *str_end = str + FUNC4(str) - 1;
	while (str < str_end) {
		if (*str_end != '\n')
			break;
		*str_end-- = '\0';
	}

	if (str_end <= str)
		goto cleanup;

	FUNC1(obs_level, "[ffmpeg] %s", str);

cleanup:
	FUNC3(log_context);
}