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
struct effect_parser {int dummy; } ;

/* Variables and functions */
 int PARSE_CONTINUE ; 
 int PARSE_EOF ; 
 int FUNC0 (struct effect_parser*,char*,int*) ; 

__attribute__((used)) static bool FUNC1(struct effect_parser *ep, bool *is_property,
				  bool *is_const, bool *is_uniform)
{
	while (true) {
		int code;
		code = FUNC0(ep, "property", is_property);
		if (code == PARSE_EOF)
			return false;
		else if (code == PARSE_CONTINUE)
			continue;

		code = FUNC0(ep, "const", is_const);
		if (code == PARSE_EOF)
			return false;
		else if (code == PARSE_CONTINUE)
			continue;

		code = FUNC0(ep, "uniform", is_uniform);
		if (code == PARSE_EOF)
			return false;
		else if (code == PARSE_CONTINUE)
			continue;

		break;
	}

	return true;
}