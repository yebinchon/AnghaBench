#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  ht_name; } ;
struct TYPE_7__ {char const* name; } ;
typedef  TYPE_1__ RFlagItem ;
typedef  TYPE_2__ RFlag ;

/* Variables and functions */
 char* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ ,char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char const*) ; 

__attribute__((used)) static bool FUNC6(RFlag *f, RFlagItem *item, const char *newname, bool force) {
	if (!f || !item || !newname) {
		return false;
	}
	if (!force && (item->name == newname || (item->name && !FUNC5 (item->name, newname)))) {
		return false;
	}
	char *fname = FUNC0 (newname);
	if (!fname) {
		return false;
	}
	bool res = (item->name)
		? FUNC3 (f->ht_name, item->name, fname)
		: FUNC2 (f->ht_name, fname, item);
	if (res) {
		FUNC4 (item, fname);
		return true;
	}
	FUNC1 (fname);
	return false;
}