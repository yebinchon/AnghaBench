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
 char FUNC0 (char const*) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*,int) ; 
 int FUNC3 (char const*,char const*) ; 

__attribute__((used)) static bool FUNC4(const char *str, const char *expr) {
	bool startsWith = *expr == '^';
	bool endsWith = FUNC0 (expr) == '$';
	if (startsWith && endsWith) {
		return FUNC1 (str) == FUNC1 (expr) - 2 && \
			!FUNC2 (str, expr + 1, FUNC1 (expr) - 2);
	}
	if (startsWith) {
		return !FUNC2 (str, expr + 1, FUNC1 (expr) - 1);
	}
	if (endsWith) {
		int alen = FUNC1 (str);
		int blen = FUNC1 (expr) - 1;
		if (alen <= blen) {
			return false;
		}
		const char *a = str + FUNC1 (str) - blen;
		return (!FUNC2 (a, expr, blen));
	}
	return FUNC3 (str, expr);
}