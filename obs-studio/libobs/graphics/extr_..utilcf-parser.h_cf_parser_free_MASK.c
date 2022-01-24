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
struct cf_parser {int /*<<< orphan*/ * cur_token; int /*<<< orphan*/  error_list; int /*<<< orphan*/  pp; int /*<<< orphan*/  lex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC3(struct cf_parser *parser)
{
	FUNC0(&parser->lex);
	FUNC1(&parser->pp);
	FUNC2(&parser->error_list);

	parser->cur_token = NULL;
}