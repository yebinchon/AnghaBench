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
 scalar_t__ FUNC0 (char const) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 

__attribute__((used)) static bool FUNC2(const char *name) {
	int i;
	if (FUNC1 (name, ".zip")) {
		return false;
	}
	for (i = 0; name[i]; i++) {
		switch (name[i]) {
		case '\\': // for w32
		case '.':
		case '_':
		case ':':
		case '-':
			continue;
		}
		if (name[i] >= 'a' && name[i] <= 'z') {
			continue;
		}
		if (name[i] >= 'A' && name[i] <= 'Z') {
			continue;
		}
		if (FUNC0 (name[i])) {
			continue;
		}
		return false;
	}
	return true;
}