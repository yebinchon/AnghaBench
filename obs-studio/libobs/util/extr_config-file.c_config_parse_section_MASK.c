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
struct lexer {int /*<<< orphan*/  offset; } ;
struct config_section {int /*<<< orphan*/  items; } ;
struct config_item {int /*<<< orphan*/  value; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {char* array; } ;
struct base_token {scalar_t__ type; TYPE_1__ text; } ;

/* Variables and functions */
 scalar_t__ BASETOKEN_OTHER ; 
 scalar_t__ BASETOKEN_WHITESPACE ; 
 int /*<<< orphan*/  PARSE_WHITESPACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct strref*,struct strref*) ; 
 int /*<<< orphan*/  FUNC3 (struct lexer*,struct strref*,char) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *,struct config_item*) ; 
 int /*<<< orphan*/  FUNC5 (char) ; 
 scalar_t__ FUNC6 (struct lexer*,struct base_token*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct strref*) ; 
 int /*<<< orphan*/  FUNC8 (struct strref*,TYPE_1__*) ; 
 scalar_t__ FUNC9 (struct strref*) ; 

__attribute__((used)) static void FUNC10(struct config_section *section,
				 struct lexer *lex)
{
	struct base_token token;

	while (FUNC6(lex, &token, PARSE_WHITESPACE)) {
		struct strref name, value;

		while (token.type == BASETOKEN_WHITESPACE) {
			if (!FUNC6(lex, &token, PARSE_WHITESPACE))
				return;
		}

		if (token.type == BASETOKEN_OTHER) {
			if (*token.text.array == '#') {
				do {
					if (!FUNC6(
						    lex, &token,
						    PARSE_WHITESPACE))
						return;
				} while (!FUNC5(*token.text.array));

				continue;
			} else if (*token.text.array == '[') {
				lex->offset--;
				return;
			}
		}

		FUNC8(&name, &token.text);
		if (!FUNC3(lex, &name, '='))
			continue;

		FUNC7(&value);
		FUNC3(lex, &value, 0);

		if (FUNC9(&value)) {
			struct config_item item;
			item.name = FUNC0(name.array, name.len);
			item.value = FUNC1(1);
			FUNC4(sizeof(struct config_item),
					 &section->items, &item);
		} else {
			FUNC2(&section->items, &name, &value);
		}
	}
}