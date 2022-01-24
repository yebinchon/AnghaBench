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
struct lexer {int dummy; } ;
struct TYPE_2__ {char* array; } ;
struct base_token {TYPE_1__ text; } ;

/* Variables and functions */
 int /*<<< orphan*/  PARSE_WHITESPACE ; 
 int /*<<< orphan*/  FUNC0 (struct base_token*) ; 
 scalar_t__ FUNC1 (char) ; 
 scalar_t__ FUNC2 (struct lexer*,struct base_token*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct strref*) ; 
 int /*<<< orphan*/  FUNC4 (struct strref*,TYPE_1__*) ; 

__attribute__((used)) static bool FUNC5(struct lexer *lex, struct strref *ref, char end)
{
	bool success = end != 0;
	struct base_token token;
	FUNC0(&token);

	while (FUNC2(lex, &token, PARSE_WHITESPACE)) {
		if (end) {
			if (*token.text.array == end) {
				success = true;
				break;
			} else if (FUNC1(*token.text.array)) {
				success = false;
				break;
			}
		} else {
			if (FUNC1(*token.text.array)) {
				success = true;
				break;
			}
		}

		FUNC4(ref, &token.text);
	}

	FUNC3(ref);
	return success;
}