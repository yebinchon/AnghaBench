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
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,unsigned char) ; 
 char** uriencode_map ; 
 char* uriencode_str ; 

void FUNC2(void) {
    int x;
    char *str = uriencode_str;
    for (x = 0; x < 256; x++) {
        if (FUNC0(x) || x == '-' || x == '.' || x == '_' || x == '~') {
            uriencode_map[x] = NULL;
        } else {
            FUNC1(str, 4, "%%%02hhX", (unsigned char)x);
            uriencode_map[x] = str;
            str += 3; /* lobbing off the \0 is fine */
        }
    }
}