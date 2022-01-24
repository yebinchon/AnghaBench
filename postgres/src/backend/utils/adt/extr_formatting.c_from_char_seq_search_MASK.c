#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* key; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ FormatNode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DCH_MAX_ITEM_SIZ ; 
 int /*<<< orphan*/  ERRCODE_INVALID_DATETIME_FORMAT ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (char*,char const* const*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 

__attribute__((used)) static int
FUNC8(int *dest, char **src, const char *const *array, int type,
					 int max, FormatNode *node, bool *have_error)
{
	int			len;

	*dest = FUNC6(*src, array, type, max, &len);
	if (len <= 0)
	{
		char		copy[DCH_MAX_ITEM_SIZ + 1];

		FUNC0(max <= DCH_MAX_ITEM_SIZ);
		FUNC7(copy, *src, max + 1);

		FUNC1(FUNC2(ERROR,
							 (FUNC3(ERRCODE_INVALID_DATETIME_FORMAT),
							  FUNC5("invalid value \"%s\" for \"%s\"",
									 copy, node->key->name),
							  FUNC4("The given value did not match any of "
										"the allowed values for this field."))));
	}
	*src += len;
	return len;

on_error:
	return -1;
}