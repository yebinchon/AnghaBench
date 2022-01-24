#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* anal; } ;
struct TYPE_3__ {int /*<<< orphan*/ * sdb_types; } ;
typedef  int /*<<< orphan*/  Sdb ;
typedef  TYPE_2__ RCore ;
typedef  int /*<<< orphan*/  PJ ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC10 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 char* FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,char*) ; 

__attribute__((used)) static int FUNC13(void *p, const char *k, const char *v) {
	RCore *core = (RCore *)p;
	PJ *pj = FUNC6 ();
	FUNC7 (pj);
	Sdb *sdb = core->anal->sdb_types;
	char *sizecmd = FUNC10 ("type.%s.size", k);
	char *size_s = FUNC12 (sdb, NULL, -1, sizecmd);
	char *formatcmd = FUNC10 ("type.%s", k);
	char *format_s = FUNC12 (sdb, NULL, -1, formatcmd);
	FUNC11 (format_s);
	FUNC5 (pj, "type", k);
	FUNC4 (pj, "size", size_s ? FUNC0 (size_s) : -1);
	FUNC5 (pj, "format", format_s);
	FUNC2 (pj);
	FUNC9 ("%s", FUNC8 (pj));
	FUNC3 (pj);
	FUNC1 (size_s);
	FUNC1 (format_s);
	FUNC1 (sizecmd);
	FUNC1 (formatcmd);
	return 1;
}