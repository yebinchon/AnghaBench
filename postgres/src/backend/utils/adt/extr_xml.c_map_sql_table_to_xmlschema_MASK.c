#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* TupleDesc ;
struct TYPE_17__ {int /*<<< orphan*/  atttypid; int /*<<< orphan*/  attname; scalar_t__ attisdropped; } ;
struct TYPE_16__ {int /*<<< orphan*/  relname; int /*<<< orphan*/  relnamespace; } ;
struct TYPE_15__ {char const* data; } ;
struct TYPE_14__ {int natts; } ;
typedef  TYPE_2__ StringInfoData ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_3__* Form_pg_class ;
typedef  TYPE_4__* Form_pg_attribute ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MyDatabaseId ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RELOID ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC7 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 char* FUNC15 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC16 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int) ; 
 char* FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*,char const*) ; 

__attribute__((used)) static const char *
FUNC21(TupleDesc tupdesc, Oid relid, bool nulls,
						   bool tableforest, const char *targetns)
{
	int			i;
	char	   *xmltn;
	char	   *tabletypename;
	char	   *rowtypename;
	StringInfoData result;

	FUNC13(&result);

	if (FUNC4(relid))
	{
		HeapTuple	tuple;
		Form_pg_class reltuple;

		tuple = FUNC6(RELOID, FUNC3(relid));
		if (!FUNC1(tuple))
			FUNC10(ERROR, "cache lookup failed for relation %u", relid);
		reltuple = (Form_pg_class) FUNC0(tuple);

		xmltn = FUNC16(FUNC2(reltuple->relname),
											   true, false);

		tabletypename = FUNC15("TableType",
																 FUNC11(MyDatabaseId),
																 FUNC12(reltuple->relnamespace),
																 FUNC2(reltuple->relname));

		rowtypename = FUNC15("RowType",
															   FUNC11(MyDatabaseId),
															   FUNC12(reltuple->relnamespace),
															   FUNC2(reltuple->relname));

		FUNC5(tuple);
	}
	else
	{
		if (tableforest)
			xmltn = "row";
		else
			xmltn = "table";

		tabletypename = "TableType";
		rowtypename = "RowType";
	}

	FUNC20(&result, targetns);

	FUNC9(&result,
						   FUNC18(FUNC14(tupdesc)));

	FUNC8(&result,
					 "<xsd:complexType name=\"%s\">\n"
					 "  <xsd:sequence>\n",
					 rowtypename);

	for (i = 0; i < tupdesc->natts; i++)
	{
		Form_pg_attribute att = FUNC7(tupdesc, i);

		if (att->attisdropped)
			continue;
		FUNC8(&result,
						 "    <xsd:element name=\"%s\" type=\"%s\"%s></xsd:element>\n",
						 FUNC16(FUNC2(att->attname),
														true, false),
						 FUNC17(att->atttypid, -1),
						 nulls ? " nillable=\"true\"" : " minOccurs=\"0\"");
	}

	FUNC9(&result,
						   "  </xsd:sequence>\n"
						   "</xsd:complexType>\n\n");

	if (!tableforest)
	{
		FUNC8(&result,
						 "<xsd:complexType name=\"%s\">\n"
						 "  <xsd:sequence>\n"
						 "    <xsd:element name=\"row\" type=\"%s\" minOccurs=\"0\" maxOccurs=\"unbounded\"/>\n"
						 "  </xsd:sequence>\n"
						 "</xsd:complexType>\n\n",
						 tabletypename, rowtypename);

		FUNC8(&result,
						 "<xsd:element name=\"%s\" type=\"%s\"/>\n\n",
						 xmltn, tabletypename);
	}
	else
		FUNC8(&result,
						 "<xsd:element name=\"%s\" type=\"%s\"/>\n\n",
						 xmltn, rowtypename);

	FUNC19(&result);

	return result.data;
}