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
struct lexer {int dummy; } ;
struct darray {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int CONFIG_FILENOTFOUND ; 
 int CONFIG_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct lexer*) ; 
 int /*<<< orphan*/  FUNC2 (struct lexer*) ; 
 int /*<<< orphan*/  FUNC3 (struct lexer*,char*) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC6 (struct darray*,struct lexer*) ; 

__attribute__((used)) static int FUNC7(struct darray *sections, const char *file,
			     bool always_open)
{
	char *file_data;
	struct lexer lex;
	FILE *f;

	f = FUNC4(file, "rb");
	if (always_open && !f)
		f = FUNC4(file, "w+");
	if (!f)
		return CONFIG_FILENOTFOUND;

	FUNC5(f, &file_data);
	FUNC0(f);

	if (!file_data)
		return CONFIG_SUCCESS;

	FUNC2(&lex);
	FUNC3(&lex, file_data);

	FUNC6(sections, &lex);

	FUNC1(&lex);
	return CONFIG_SUCCESS;
}