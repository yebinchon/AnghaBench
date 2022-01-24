#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__* PQExpBuffer ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int OidOptions ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Archive ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 char* g_opaque_type ; 
 char* FUNC6 (char*) ; 
 int zeroAsAny ; 
 int zeroAsNone ; 
 int zeroAsOpaque ; 
 int zeroAsStar ; 

__attribute__((used)) static char *
FUNC7(Archive *fout, Oid oid, OidOptions opts)
{
	char	   *result;
	PQExpBuffer query;
	PGresult   *res;

	if (oid == 0)
	{
		if ((opts & zeroAsOpaque) != 0)
			return FUNC6(g_opaque_type);
		else if ((opts & zeroAsAny) != 0)
			return FUNC6("'any'");
		else if ((opts & zeroAsStar) != 0)
			return FUNC6("*");
		else if ((opts & zeroAsNone) != 0)
			return FUNC6("NONE");
	}

	query = FUNC4();
	FUNC3(query, "SELECT pg_catalog.format_type('%u'::pg_catalog.oid, NULL)",
					  oid);

	res = FUNC0(fout, query->data);

	/* result of format_type is already quoted */
	result = FUNC6(FUNC2(res, 0, 0));

	FUNC1(res);
	FUNC5(query);

	return result;
}