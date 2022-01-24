#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {char* group; scalar_t__ name; } ;
struct TYPE_12__ {int /*<<< orphan*/ * member_0; } ;
struct TYPE_11__ {int /*<<< orphan*/ * member_1; int /*<<< orphan*/ * member_0; } ;
struct TYPE_13__ {TYPE_1__ key; int /*<<< orphan*/  pos; TYPE_3__ member_1; TYPE_2__ member_0; } ;
typedef  TYPE_4__ line_type ;
struct TYPE_14__ {TYPE_4__ curr; int /*<<< orphan*/  fp; } ;
typedef  TYPE_5__ inifile ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(inifile *dba) {
	line_type ln = {{NULL,NULL},NULL};

	/*inifile_line_free(&dba->next); ??? */
	FUNC3(dba->fp, dba->curr.pos, SEEK_SET);
	ln.key.group = FUNC0(dba->curr.key.group ? dba->curr.key.group : "");
	FUNC2(dba, &ln);
	FUNC1(&dba->curr);
	dba->curr = ln;
	return ln.key.group || ln.key.name;
}