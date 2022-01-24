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
struct r_magic {char* desc; scalar_t__ type; } ;
typedef  int /*<<< orphan*/  RMagic ;

/* Variables and functions */
 scalar_t__ FILE_FMT_NONE ; 
 int FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ file_nformats ; 
 scalar_t__ file_nnames ; 
 scalar_t__* magic_file_formats ; 
 char** magic_file_names ; 

__attribute__((used)) static int FUNC2(RMagic *ms, struct r_magic *m) {
	char *ptr;

	for (ptr = m->desc; *ptr; ptr++) {
		if (*ptr == '%') {
			break;
		}
	}
	if (*ptr == '\0') {
		/* No format string; ok */
		return 1;
	}

	if (file_nformats != file_nnames) {
		return -1;
	}		

	if (m->type >= file_nformats) {
		FUNC1(ms, "Internal error inconsistency between "
		    "m->type and format strings");
		return -1;
	}
	if (magic_file_formats[m->type] == FILE_FMT_NONE) {
		FUNC1(ms, "No format string for `%s' with description "
		    "`%s'", m->desc, magic_file_names[m->type]);
		return -1;
	}

	ptr++;
	if (ptr && FUNC0(ptr, magic_file_formats[m->type]) == -1) {
		/*
		 * TODO: this error message is unhelpful if the format
		 * string is not one character long
		 */
		FUNC1(ms, "Printf format `%c' is not valid for type "
		    "`%s' in description `%s'",
		    ptr && *ptr ? *ptr : '?',
		    magic_file_names[m->type], m->desc);
		return -1;
	}

	for (; *ptr; ptr++) {
		if (*ptr == '%') {
			FUNC1 (ms,
			    "Too many format strings (should have at most one) "
			    "for `%s' with description `%s'",
			    magic_file_names[m->type], m->desc);
			return -1;
		}
	}
	return 0;
}