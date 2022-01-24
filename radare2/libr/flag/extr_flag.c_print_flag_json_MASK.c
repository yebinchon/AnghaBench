#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct print_flag_t {scalar_t__ range_from; scalar_t__ range_to; int /*<<< orphan*/  pj; scalar_t__ in_range; } ;
struct TYPE_3__ {scalar_t__ offset; int /*<<< orphan*/  comment; int /*<<< orphan*/  alias; int /*<<< orphan*/  size; int /*<<< orphan*/  realname; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ RFlagItem ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC5(RFlagItem *flag, void *user) {
	struct print_flag_t *u = (struct print_flag_t *)user;
	if (u->in_range && (flag->offset < u->range_from || flag->offset >= u->range_to)) {
		return true;
	}
	FUNC4 (u->pj);
	FUNC3 (u->pj, "name", flag->name);
	if (flag->name != flag->realname) {
		FUNC3 (u->pj, "realname", flag->realname);
	}
	FUNC1 (u->pj, "size", flag->size);
	if (flag->alias) {
		FUNC3 (u->pj, "alias", flag->alias);
	} else {
		FUNC2 (u->pj, "offset", flag->offset);
	}
	if (flag->comment) {
		FUNC3 (u->pj, "comment", flag->comment);
	}
	FUNC0 (u->pj);
	return true;
}