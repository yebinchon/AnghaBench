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
struct cf_parser {int /*<<< orphan*/  pp; int /*<<< orphan*/  cur_token; int /*<<< orphan*/  error_list; int /*<<< orphan*/  lex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline bool FUNC3(struct cf_parser *parser, const char *str,
				   const char *file)
{
	if (!FUNC0(&parser->lex, str, file))
		return false;

	if (!FUNC1(&parser->pp, &parser->lex, &parser->error_list))
		return false;

	parser->cur_token = FUNC2(&parser->pp);
	return true;
}