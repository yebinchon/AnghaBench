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
 int /*<<< orphan*/  ERRCODE_INVALID_DATETIME_FORMAT ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(int *dest, const int value, const FormatNode *node,
				  bool *have_error)
{
	if (*dest != 0 && *dest != value)
		FUNC0(FUNC1(ERROR,
							 (FUNC2(ERRCODE_INVALID_DATETIME_FORMAT),
							  FUNC4("conflicting values for \"%s\" field in "
									 "formatting string",
									 node->key->name),
							  FUNC3("This value contradicts a previous setting "
										"for the same field type."))));
	*dest = value;

on_error:
	return;
}