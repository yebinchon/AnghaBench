#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct strref {int dummy; } ;
struct cf_parser {TYPE_1__* cur_token; } ;
struct TYPE_2__ {int /*<<< orphan*/  str; } ;

/* Variables and functions */
 int /*<<< orphan*/  CFTOKEN_NAME ; 
 int PARSE_SUCCESS ; 
 int FUNC0 (struct cf_parser*,int /*<<< orphan*/ ,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct strref*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC2(struct cf_parser *p, struct strref *dst,
				  const char *name, const char *goto_token)
{
	int errcode;

	errcode = FUNC0(p, CFTOKEN_NAME, name, goto_token);
	if (errcode != PARSE_SUCCESS)
		return errcode;

	FUNC1(dst, &p->cur_token->str);
	return PARSE_SUCCESS;
}