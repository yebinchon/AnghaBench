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
struct dstr {int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 char* EXTENSIONS_MEDIA ; 
 scalar_t__ FUNC0 (struct dstr*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct dstr*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC3 (struct dstr*,char const*,int) ; 
 char* FUNC4 (char const*,char) ; 

__attribute__((used)) static bool FUNC5(const char *ext)
{
	struct dstr test = {0};
	bool valid = false;
	const char *b;
	const char *e;

	if (!ext || !*ext)
		return false;

	b = EXTENSIONS_MEDIA + 1;
	e = FUNC4(b, ';');

	for (;;) {
		if (e)
			FUNC3(&test, b, e - b);
		else
			FUNC1(&test, b);

		if (FUNC0(&test, ext) == 0) {
			valid = true;
			break;
		}

		if (!e)
			break;

		b = e + 2;
		e = FUNC4(b, ';');
	}

	FUNC2(&test);
	return valid;
}