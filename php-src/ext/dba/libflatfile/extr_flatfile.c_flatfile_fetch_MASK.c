#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  fp; } ;
typedef  TYPE_1__ flatfile ;
struct TYPE_9__ {scalar_t__ dsize; int /*<<< orphan*/ * dptr; int /*<<< orphan*/  member_1; int /*<<< orphan*/ * member_0; } ;
typedef  TYPE_2__ datum ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,TYPE_2__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__,int,int) ; 

datum FUNC5(flatfile *dba, datum key_datum) {
	datum value_datum = {NULL, 0};
	char buf[16];

	if (FUNC1(dba, key_datum)) {
		if (FUNC2(dba->fp, buf, sizeof(buf))) {
			value_datum.dsize = FUNC0(buf);
			value_datum.dptr = FUNC4(value_datum.dsize, 1, 1);
			value_datum.dsize = FUNC3(dba->fp, value_datum.dptr, value_datum.dsize);
		} else {
			value_datum.dptr = NULL;
			value_datum.dsize = 0;
		}
	}
	return value_datum;
}