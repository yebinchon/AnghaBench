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
 int /*<<< orphan*/  FUNC0 (char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*,int) ; 

__attribute__((used)) static inline bool FUNC2 (const char *name) {
	FUNC0 (name, false);
	if (!FUNC1 (name, "_Z", 2)) {
		return true;
	}
	if (!FUNC1 (name, "__Z", 3)) {
		return true;
	}
	return false;
}