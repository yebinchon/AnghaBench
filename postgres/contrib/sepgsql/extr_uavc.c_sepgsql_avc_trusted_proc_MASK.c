#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* ncontext; } ;
typedef  TYPE_1__ avc_cache ;
struct TYPE_6__ {scalar_t__ objectSubId; int /*<<< orphan*/  objectId; int /*<<< orphan*/  classId; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_2__ ObjectAddress ;

/* Variables and functions */
 char* FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ProcedureRelationId ; 
 int /*<<< orphan*/  SEPGSQL_LABEL_TAG ; 
 int /*<<< orphan*/  SEPG_CLASS_DB_PROCEDURE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__* FUNC2 (char*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC3 () ; 
 char* FUNC4 () ; 

char *
FUNC5(Oid functionId)
{
	char	   *scontext = FUNC4();
	char	   *tcontext;
	ObjectAddress tobject;
	avc_cache  *cache;

	tobject.classId = ProcedureRelationId;
	tobject.objectId = functionId;
	tobject.objectSubId = 0;
	tcontext = FUNC0(&tobject, SEPGSQL_LABEL_TAG);

	FUNC1();
	do
	{
		if (tcontext)
			cache = FUNC2(scontext, tcontext,
									   SEPG_CLASS_DB_PROCEDURE);
		else
			cache = FUNC2(scontext, FUNC3(),
									   SEPG_CLASS_DB_PROCEDURE);
	} while (!FUNC1());

	return cache->ncontext;
}