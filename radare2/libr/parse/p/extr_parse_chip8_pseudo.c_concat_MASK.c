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
 size_t FUNC0 (char*,size_t,char*,char*) ; 
 int FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2(char *buf, size_t len, char** args) {
	char *arg;
	char *dest = buf;
	int arg_len;

	while ((arg = *args++)) {
		if (FUNC0 (dest, len, "%s", arg) >= len) {
			break;
		}
		arg_len = FUNC1 (arg);
		dest += arg_len;
		len -= arg_len;
	}
}