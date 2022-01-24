#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  va_list ;
struct TYPE_5__ {char* array; } ;
struct TYPE_6__ {int type; TYPE_1__ file; } ;
typedef  TYPE_2__ obs_script_t ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
#define  OBS_SCRIPT_LANG_LUA 130 
#define  OBS_SCRIPT_LANG_PYTHON 129 
#define  OBS_SCRIPT_LANG_UNKNOWN 128 
 int /*<<< orphan*/  FUNC0 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,int,char*) ; 
 int /*<<< orphan*/  param ; 
 size_t FUNC2 (char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char const*,int /*<<< orphan*/ ) ; 

void FUNC4(obs_script_t *script, int level, const char *format,
		   va_list args)
{
	char msg[2048];
	const char *lang = "(Unknown)";
	size_t start_len;

	if (script) {
		switch (script->type) {
		case OBS_SCRIPT_LANG_UNKNOWN:
			lang = "(Unknown language)";
			break;
		case OBS_SCRIPT_LANG_LUA:
			lang = "Lua";
			break;
		case OBS_SCRIPT_LANG_PYTHON:
			lang = "Python";
			break;
		}

		start_len = FUNC2(msg, sizeof(msg), "[%s: %s] ", lang,
				     script->file.array);
	} else {
		start_len = FUNC2(msg, sizeof(msg), "[Unknown Script] ");
	}

	FUNC3(msg + start_len, sizeof(msg) - start_len, format, args);

	if (&callback)
		FUNC1(param, script, level, msg + start_len);
	FUNC0(level, "%s", msg);
}