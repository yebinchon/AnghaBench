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
struct text_lookup {int /*<<< orphan*/  top; } ;
struct text_leaf {int /*<<< orphan*/  lookup; int /*<<< orphan*/  value; } ;
struct strref {char* array; int /*<<< orphan*/  len; } ;
struct lexer {int dummy; } ;

/* Variables and functions */
 struct text_leaf* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct lexer*) ; 
 int /*<<< orphan*/  FUNC4 (struct lexer*) ; 
 int /*<<< orphan*/  FUNC5 (struct lexer*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct text_leaf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct lexer*,struct strref*) ; 
 int /*<<< orphan*/  FUNC8 (struct lexer*) ; 
 int /*<<< orphan*/  FUNC9 (struct strref*) ; 

__attribute__((used)) static void FUNC10(struct text_lookup *lookup,
			       const char *file_data)
{
	struct lexer lex;
	struct strref name, value;

	FUNC4(&lex);
	FUNC5(&lex, file_data);
	FUNC9(&name);
	FUNC9(&value);

	while (FUNC7(&lex, &name)) {
		struct text_leaf *leaf;
		bool got_eq = false;

		if (*name.array == '\n')
			continue;
	getval:
		if (!FUNC7(&lex, &value))
			break;
		if (*value.array == '\n')
			continue;
		else if (!got_eq && *value.array == '=') {
			got_eq = true;
			goto getval;
		}

		leaf = FUNC0(sizeof(struct text_leaf));
		leaf->lookup = FUNC1(name.array, name.len);
		leaf->value = FUNC2(value.array, value.len);

		FUNC6(leaf->lookup, leaf, lookup->top);

		if (!FUNC8(&lex))
			break;
	}

	FUNC3(&lex);
}