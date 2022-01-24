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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*) ; 
 char* FUNC2 (char*,char const*,char const*,char const*) ; 

__attribute__((used)) static char *FUNC3(const char *attr_type, const char *class_name, const char *attr_id) {
	char *class_name_sanitized = FUNC1 (class_name);
	if (!class_name_sanitized) {
		return NULL;
	}
	char *attr_id_sanitized = FUNC1 (attr_id);
	if (!attr_id_sanitized) {
		FUNC0 (class_name_sanitized);
		return NULL;
	}
	char *r = FUNC2 ("%s.%s.%s", attr_type, class_name, attr_id);
	FUNC0 (class_name_sanitized);
	FUNC0 (attr_id_sanitized);
	return r;
}