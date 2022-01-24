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
 char* FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (char const) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char const) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

char * FUNC4 (const char * bytes, ut32 len) {
	ut32 idx = 0, pos = 1;
	ut32 str_sz = 4*len+1+2;
	char *cpy_buffer = len > 0 ? FUNC0 (1, str_sz): NULL;
	if (!cpy_buffer) return cpy_buffer;
	// 4x is the increase from byte to \xHH where HH represents hexed byte
	cpy_buffer[0] = '"';
	while (idx < len) {
		if (bytes[idx] == '"') {
			FUNC2 (cpy_buffer+pos, "\\%c", bytes[idx]);
			pos += 2;
		} else if (FUNC1 (bytes[idx])) {
			FUNC2 (cpy_buffer+pos, "\\x%02x", bytes[idx]);
			pos += 4;
		} else {
			cpy_buffer[pos] = bytes[idx];
			pos++;
		}
		idx ++;
	}
	FUNC3 (cpy_buffer, "\"");
	return cpy_buffer;
}