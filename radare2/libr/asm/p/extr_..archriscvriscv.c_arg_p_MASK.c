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
 int /*<<< orphan*/  FUNC0 (char*,char*,char const*) ; 
 int FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2 (char *buf, unsigned long val, const char* const* array, size_t size) {
	const char *s = val >= size || array[val] ? array[val] : "unknown";
	FUNC0 (buf+FUNC1 (buf), "%s", s);
}