#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  fp; } ;
typedef  TYPE_1__ flatfile ;
struct TYPE_11__ {scalar_t__ dsize; int /*<<< orphan*/  dptr; } ;
typedef  TYPE_2__ datum ;

/* Variables and functions */
 int FLATFILE_INSERT ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_2__) ; 
 scalar_t__ FUNC1 (TYPE_1__*,TYPE_2__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC6(flatfile *dba, datum key_datum, datum value_datum, int mode) {
	if (mode == FLATFILE_INSERT) {
		if (FUNC1(dba, key_datum)) {
			return 1;
		}
		FUNC4(dba->fp, 0L, SEEK_END);
		FUNC3(dba->fp, "%zu\n", key_datum.dsize);
		FUNC2(dba->fp);
		if (FUNC5(dba->fp, key_datum.dptr, key_datum.dsize) < key_datum.dsize) {
			return -1;
		}
		FUNC3(dba->fp, "%zu\n", value_datum.dsize);
		FUNC2(dba->fp);
		if (FUNC5(dba->fp, value_datum.dptr, value_datum.dsize) < value_datum.dsize) {
			return -1;
		}
	} else { /* FLATFILE_REPLACE */
		FUNC0(dba, key_datum);
		FUNC3(dba->fp, "%zu\n", key_datum.dsize);
		FUNC2(dba->fp);
		if (FUNC5(dba->fp, key_datum.dptr, key_datum.dsize) < key_datum.dsize) {
			return -1;
		}
		FUNC3(dba->fp, "%zu\n", value_datum.dsize);
		if (FUNC5(dba->fp, value_datum.dptr, value_datum.dsize) < value_datum.dsize) {
			return -1;
		}
	}

	FUNC2(dba->fp);
	return 0;
}