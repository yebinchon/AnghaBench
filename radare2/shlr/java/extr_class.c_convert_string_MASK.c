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
typedef  int ut32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char const) ; 

__attribute__((used)) static char *FUNC5(const char *bytes, ut32 len) {
	ut32 idx = 0, pos = 0;
	ut32 str_sz = 32 * len + 1;
	char *cpy_buffer = len > 0 ? FUNC2 (str_sz) : NULL;
	if (!cpy_buffer) {
		return cpy_buffer;
	}
	// 4x is the increase from byte to \xHH where HH represents hexed byte
	FUNC3 (cpy_buffer, 0, str_sz);
	while (idx < len && pos < len) {
		if (FUNC0 (bytes[idx])) {
			if (pos + 2 < len) {
				FUNC1 (cpy_buffer);
				return NULL;
			}
			FUNC4 (cpy_buffer + pos, "\\x%02x", bytes[idx]);
			pos += 4;
		} else {
			cpy_buffer[pos] = bytes[idx];
			pos++;
		}
		idx++;
	}
	return cpy_buffer;
}