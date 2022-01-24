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
struct TYPE_5__ {int /*<<< orphan*/  tmpldbacreate; int /*<<< orphan*/  tmpltrusted; } ;
struct TYPE_4__ {void* tmpllibrary; void* tmplhandler; void* tmplvalidator; void* tmplinline; int /*<<< orphan*/  tmpldbacreate; int /*<<< orphan*/  tmpltrusted; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  TYPE_1__ PLTemplate ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_2__* Form_pg_pltemplate ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_pltemplate_tmplhandler ; 
 int /*<<< orphan*/  Anum_pg_pltemplate_tmplinline ; 
 int /*<<< orphan*/  Anum_pg_pltemplate_tmpllibrary ; 
 int /*<<< orphan*/  Anum_pg_pltemplate_tmplname ; 
 int /*<<< orphan*/  Anum_pg_pltemplate_tmplvalidator ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  F_NAMEEQ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PLTemplateNameIndexId ; 
 int /*<<< orphan*/  PLTemplateRelationId ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static PLTemplate *
FUNC13(const char *languageName)
{
	PLTemplate *result;
	Relation	rel;
	SysScanDesc scan;
	ScanKeyData key;
	HeapTuple	tup;

	rel = FUNC12(PLTemplateRelationId, AccessShareLock);

	FUNC4(&key,
				Anum_pg_pltemplate_tmplname,
				BTEqualStrategyNumber, F_NAMEEQ,
				FUNC0(languageName));
	scan = FUNC8(rel, PLTemplateNameIndexId, true,
							  NULL, 1, &key);

	tup = FUNC10(scan);
	if (FUNC2(tup))
	{
		Form_pg_pltemplate tmpl = (Form_pg_pltemplate) FUNC1(tup);
		Datum		datum;
		bool		isnull;

		result = (PLTemplate *) FUNC7(sizeof(PLTemplate));
		result->tmpltrusted = tmpl->tmpltrusted;
		result->tmpldbacreate = tmpl->tmpldbacreate;

		/* Remaining fields are variable-width so we need heap_getattr */
		datum = FUNC6(tup, Anum_pg_pltemplate_tmplhandler,
							 FUNC3(rel), &isnull);
		if (!isnull)
			result->tmplhandler = FUNC5(datum);

		datum = FUNC6(tup, Anum_pg_pltemplate_tmplinline,
							 FUNC3(rel), &isnull);
		if (!isnull)
			result->tmplinline = FUNC5(datum);

		datum = FUNC6(tup, Anum_pg_pltemplate_tmplvalidator,
							 FUNC3(rel), &isnull);
		if (!isnull)
			result->tmplvalidator = FUNC5(datum);

		datum = FUNC6(tup, Anum_pg_pltemplate_tmpllibrary,
							 FUNC3(rel), &isnull);
		if (!isnull)
			result->tmpllibrary = FUNC5(datum);

		/* Ignore template if handler or library info is missing */
		if (!result->tmplhandler || !result->tmpllibrary)
			result = NULL;
	}
	else
		result = NULL;

	FUNC9(scan);

	FUNC11(rel, AccessShareLock);

	return result;
}