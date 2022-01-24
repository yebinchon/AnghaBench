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
struct cf_parser {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cf_parser*) ; 
 int /*<<< orphan*/  FUNC1 (struct cf_parser*,char const*,char const*) ; 

__attribute__((used)) static inline bool FUNC2(struct cf_parser *p, const char *str1,
					const char *str2)
{
	if (!FUNC1(p, str1, str2)) {
		FUNC0(p);
		return false;
	}

	return true;
}