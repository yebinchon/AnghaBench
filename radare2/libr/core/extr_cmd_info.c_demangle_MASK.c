#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  config; } ;
typedef  TYPE_1__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 char* FUNC4 (char const*,char) ; 
 char* FUNC5 (char const*) ; 

__attribute__((used)) static bool FUNC6(RCore *core, const char *s) {
	FUNC3 (core && s, false);
	const char *ss = FUNC4 (s, ' ');
	if (!*s) {
		return false;
	}
	if (!ss) {
		const char *lang = FUNC2 (core->config, "bin.lang");
		FUNC0 (core, lang, s);
		return true;
	}
	char *p = FUNC5 (s);
	char *q = p + (ss - s);
	*q = 0;
	FUNC0 (core, p, q + 1);
	FUNC1 (p);
	return true;
}