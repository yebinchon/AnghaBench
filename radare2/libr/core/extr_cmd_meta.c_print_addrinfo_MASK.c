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
typedef  scalar_t__ ut64 ;

/* Variables and functions */
 scalar_t__ UT64_MAX ; 
 int /*<<< orphan*/  filter_count ; 
 scalar_t__ filter_format ; 
 scalar_t__ filter_offset ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,...) ; 
 scalar_t__ FUNC2 (char const*) ; 
 char* FUNC3 (char*,char) ; 
 char* FUNC4 (char const*) ; 

__attribute__((used)) static int FUNC5 (void *user, const char *k, const char *v) {
	ut64 offset = FUNC2 (k);
	if (!offset || offset == UT64_MAX) {
		return true;
	}
	char *subst = FUNC4 (v);
	char *colonpos = FUNC3 (subst, '|'); // XXX keep only : for simplicity?
	if (!colonpos) {
		colonpos = FUNC3 (subst, ':');
	}
	if (!colonpos) {
		FUNC1 ("%s\n", subst);
	}
	if (colonpos && (filter_offset == UT64_MAX || filter_offset == offset)) {
		if (filter_format) {
			*colonpos = ':';
			FUNC1 ("CL %s %s\n", k, subst);
		} else {
			*colonpos = 0;
			FUNC1 ("file: %s\nline: %s\n", subst, colonpos + 1);
		}
		filter_count++;
	}
	FUNC0 (subst);

	return true;
}