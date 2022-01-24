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
struct dstr {char* array; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  obs_source_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dstr*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct dstr*,char*,char const*,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static char *FUNC4(obs_source_t *dst, const char *name)
{
	struct dstr new_name = {0};
	int inc = 0;

	FUNC0(&new_name, name);

	for (;;) {
		obs_source_t *existing_filter =
			FUNC2(dst, new_name.array);
		if (!existing_filter)
			break;

		FUNC3(existing_filter);

		FUNC1(&new_name, "%s %d", name, ++inc + 1);
	}

	return new_name.array;
}