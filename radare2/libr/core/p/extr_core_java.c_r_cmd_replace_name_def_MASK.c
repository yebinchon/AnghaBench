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
typedef  scalar_t__ ut32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (scalar_t__) ; 
 char* FUNC2 (char*,scalar_t__,char*,scalar_t__,char const*,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,char const*,char const*) ; 

__attribute__((used)) static char * FUNC4 (const char *s_new, ut32 replace_len, const char *s_old, ut32 match_len, const char *buffer, ut32 buf_len, ut32 *res_len) {
	const char * fmt = "L%s;";
	char *s_new_ref = s_new && replace_len > 0 ? FUNC1 (3 + replace_len) : NULL;
	char *s_old_ref = s_old && match_len > 0 ? FUNC1 (3 + match_len) : NULL;
	char *result = NULL;
	*res_len = 0;
	if (s_new_ref && s_old_ref) {
		FUNC3 (s_new_ref, replace_len+3, fmt, s_new);
		FUNC3 (s_old_ref, match_len+3, fmt, s_old);
		result = FUNC2 (s_new_ref, replace_len+2, s_old_ref, match_len+2, buffer, buf_len, res_len);
	}
	FUNC0 (s_new_ref);
	FUNC0 (s_old_ref);
	return result;
}