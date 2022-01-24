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
struct strref {scalar_t__ len; int /*<<< orphan*/  array; } ;
struct lexer {char* offset; } ;
struct TYPE_2__ {char* array; scalar_t__ len; } ;
struct base_token {scalar_t__ type; TYPE_1__ text; } ;

/* Variables and functions */
 scalar_t__ BASETOKEN_WHITESPACE ; 
 int /*<<< orphan*/  PARSE_WHITESPACE ; 
 int /*<<< orphan*/  FUNC0 (struct base_token*) ; 
 scalar_t__ FUNC1 (struct lexer*,struct base_token*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lexer*,struct strref*) ; 
 int /*<<< orphan*/  FUNC3 (struct strref*) ; 
 int /*<<< orphan*/  FUNC4 (struct strref*,TYPE_1__*) ; 

__attribute__((used)) static bool FUNC5(struct lexer *lex, struct strref *str)
{
	struct base_token temp;

	FUNC0(&temp);
	FUNC3(str);

	while (FUNC1(lex, &temp, PARSE_WHITESPACE)) {
		char ch = *temp.text.array;

		if (!str->array) {
			/* comments are designated with a #, and end at LF */
			if (ch == '#') {
				while (ch != '\n' && ch != 0)
					ch = *(++lex->offset);
			} else if (temp.type == BASETOKEN_WHITESPACE) {
				FUNC4(str, &temp.text);
				break;
			} else {
				FUNC4(str, &temp.text);
				if (ch == '"') {
					FUNC2(lex, str);
					break;
				} else if (ch == '=') {
					break;
				}
			}
		} else {
			if (temp.type == BASETOKEN_WHITESPACE ||
			    *temp.text.array == '=') {
				lex->offset -= temp.text.len;
				break;
			}

			if (ch == '#') {
				lex->offset--;
				break;
			}

			str->len += temp.text.len;
		}
	}

	return (str->len != 0);
}