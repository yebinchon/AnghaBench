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
struct strref {int /*<<< orphan*/  len; int /*<<< orphan*/  array; } ;
struct lexer {int dummy; } ;
struct darray {int dummy; } ;
struct config_section {int /*<<< orphan*/  name; } ;
struct TYPE_2__ {char* array; } ;
struct base_token {scalar_t__ type; TYPE_1__ text; } ;

/* Variables and functions */
 scalar_t__ BASETOKEN_WHITESPACE ; 
 int /*<<< orphan*/  PARSE_WHITESPACE ; 
 int /*<<< orphan*/  FUNC0 (struct base_token*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct config_section*,struct lexer*) ; 
 int /*<<< orphan*/  FUNC3 (struct lexer*,struct strref*,char) ; 
 struct config_section* FUNC4 (int,struct darray*) ; 
 int /*<<< orphan*/  FUNC5 (char) ; 
 scalar_t__ FUNC6 (struct lexer*,struct base_token*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct strref*) ; 

__attribute__((used)) static void FUNC8(struct darray *sections, struct lexer *lex)
{
	struct strref section_name;
	struct base_token token;

	FUNC0(&token);

	while (FUNC6(lex, &token, PARSE_WHITESPACE)) {
		struct config_section *section;

		while (token.type == BASETOKEN_WHITESPACE) {
			if (!FUNC6(lex, &token, PARSE_WHITESPACE))
				return;
		}

		if (*token.text.array != '[') {
			while (!FUNC5(*token.text.array)) {
				if (!FUNC6(lex, &token,
							PARSE_WHITESPACE))
					return;
			}

			continue;
		}

		FUNC7(&section_name);
		FUNC3(lex, &section_name, ']');
		if (!section_name.len)
			return;

		section = FUNC4(sizeof(struct config_section),
					       sections);
		section->name = FUNC1(section_name.array, section_name.len);
		FUNC2(section, lex);
	}
}