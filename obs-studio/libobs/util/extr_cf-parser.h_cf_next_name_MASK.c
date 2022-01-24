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
 int PARSE_EOF ; 
 int FUNC0 (struct cf_parser*,char**,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct cf_parser*) ; 

__attribute__((used)) static inline int FUNC2(struct cf_parser *p, char **dst,
			       const char *name, const char *goto_token)
{
	if (!FUNC1(p))
		return PARSE_EOF;

	return FUNC0(p, dst, name, goto_token);
}