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
 char* FUNC0 (char*,char) ; 
 char* FUNC1 (char const*,char) ; 

__attribute__((used)) static const char* FUNC2 (const char *buf, int pos) {
	int i;
	for (i = 0; buf && i < pos; i++) {
		buf = FUNC1 (buf, ' ');
		if (!buf) {
			break;
		}
		buf = FUNC0 ((char *) buf, ' ');
	}
	return buf;
}