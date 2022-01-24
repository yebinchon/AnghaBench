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
struct dstr {int /*<<< orphan*/  array; } ;
struct cf_preprocessor {int /*<<< orphan*/  defines; } ;
struct TYPE_2__ {int /*<<< orphan*/  str; } ;
struct cf_def {TYPE_1__ name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cf_preprocessor*,TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct cf_def*) ; 
 struct cf_def* FUNC2 (struct cf_preprocessor*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct cf_def*) ; 
 int /*<<< orphan*/  FUNC4 (struct dstr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct cf_def*,struct cf_def*,int) ; 

void FUNC6(struct cf_preprocessor *pp, struct cf_def *def)
{
	struct cf_def *existing = FUNC2(pp, &def->name.str);

	if (existing) {
		struct dstr name;
		FUNC4(&name, &def->name.str);
		FUNC0(pp, &def->name, "Token $1 already defined",
			      name.array, NULL, NULL);
		FUNC0(pp, &existing->name,
			      "Previous definition of $1 is here", name.array,
			      NULL, NULL);

		FUNC1(existing);
		FUNC5(existing, def, sizeof(struct cf_def));
	} else {
		FUNC3(pp->defines, def);
	}
}