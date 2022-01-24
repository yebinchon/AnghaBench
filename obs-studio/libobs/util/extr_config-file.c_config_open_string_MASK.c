#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct lexer {int dummy; } ;
struct config_data {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  sections; int /*<<< orphan*/ * file; } ;
typedef  TYPE_1__ config_t ;

/* Variables and functions */
 int CONFIG_ERROR ; 
 int CONFIG_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct lexer*) ; 
 int /*<<< orphan*/  FUNC4 (struct lexer*) ; 
 int /*<<< orphan*/  FUNC5 (struct lexer*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct lexer*) ; 

int FUNC7(config_t **config, const char *str)
{
	struct lexer lex;

	if (!config)
		return CONFIG_ERROR;

	*config = FUNC1(sizeof(struct config_data));
	if (!*config)
		return CONFIG_ERROR;

	if (!FUNC2(*config)) {
		FUNC0(*config);
		return CONFIG_ERROR;
	}

	(*config)->file = NULL;

	FUNC4(&lex);
	FUNC5(&lex, str);
	FUNC6(&(*config)->sections, &lex);
	FUNC3(&lex);

	return CONFIG_SUCCESS;
}