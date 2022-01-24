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
struct TYPE_11__ {char* id; char* name; } ;
struct TYPE_10__ {char* id; char* name; } ;
typedef  TYPE_1__ RRDSET ;
typedef  TYPE_2__ RRDDIM ;
typedef  int /*<<< orphan*/  BUFFER ;

/* Variables and functions */
 int /*<<< orphan*/  RRDSET_TYPE_LINE ; 
 int /*<<< orphan*/  RRD_ALGORITHM_INCREMENTAL ; 
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC5 (TYPE_1__*,char*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_2__*,char*) ; 
 TYPE_1__* FUNC7 (char*,char*,int /*<<< orphan*/ *,char*,char*,char*,char*,char*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC9(void) {
    FUNC3(stderr, "Creating chart\n");
    RRDSET *st = FUNC7("chart", "ID", NULL, "family", "context", "Unit Testing", "a value", "unittest", NULL, 1, 1, RRDSET_TYPE_LINE);
    FUNC3(stderr, "Created chart with id '%s', name '%s'\n", st->id, st->name);

    FUNC3(stderr, "Creating dimension DIM1\n");
    RRDDIM *rd1 = FUNC5(st, "DIM1", NULL, 1, 1, RRD_ALGORITHM_INCREMENTAL);
    FUNC3(stderr, "Created dimension with id '%s', name '%s'\n", rd1->id, rd1->name);

    FUNC3(stderr, "Creating dimension DIM2\n");
    RRDDIM *rd2 = FUNC5(st, "DIM2", NULL, 1, 1, RRD_ALGORITHM_INCREMENTAL);
    FUNC3(stderr, "Created dimension with id '%s', name '%s'\n", rd2->id, rd2->name);

    FUNC3(stderr, "Renaming chart to CHARTNAME1\n");
    FUNC8(st, "CHARTNAME1");
    FUNC3(stderr, "Renamed chart with id '%s' to name '%s'\n", st->id, st->name);

    FUNC3(stderr, "Renaming chart to CHARTNAME2\n");
    FUNC8(st, "CHARTNAME2");
    FUNC3(stderr, "Renamed chart with id '%s' to name '%s'\n", st->id, st->name);

    FUNC3(stderr, "Renaming dimension DIM1 to DIM1NAME1\n");
    FUNC6(st, rd1, "DIM1NAME1");
    FUNC3(stderr, "Renamed dimension with id '%s' to name '%s'\n", rd1->id, rd1->name);

    FUNC3(stderr, "Renaming dimension DIM1 to DIM1NAME2\n");
    FUNC6(st, rd1, "DIM1NAME2");
    FUNC3(stderr, "Renamed dimension with id '%s' to name '%s'\n", rd1->id, rd1->name);

    FUNC3(stderr, "Renaming dimension DIM2 to DIM2NAME1\n");
    FUNC6(st, rd2, "DIM2NAME1");
    FUNC3(stderr, "Renamed dimension with id '%s' to name '%s'\n", rd2->id, rd2->name);

    FUNC3(stderr, "Renaming dimension DIM2 to DIM2NAME2\n");
    FUNC6(st, rd2, "DIM2NAME2");
    FUNC3(stderr, "Renamed dimension with id '%s' to name '%s'\n", rd2->id, rd2->name);

    BUFFER *buf = FUNC0(1);
    FUNC4(st, buf);
    FUNC3(stderr, "%s", FUNC2(buf));
    FUNC1(buf);
    return 1;
}