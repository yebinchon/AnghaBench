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
struct strref {char* array; } ;
struct lexer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lexer*,struct strref*) ; 
 int /*<<< orphan*/  FUNC1 (struct strref*) ; 

__attribute__((used)) static inline bool FUNC2(struct lexer *p)
{
	struct strref val;
	bool success = true;

	FUNC1(&val);

	while (true) {
		if (!FUNC0(p, &val)) {
			success = false;
			break;
		}
		if (*val.array == '\n')
			break;
	}

	return success;
}