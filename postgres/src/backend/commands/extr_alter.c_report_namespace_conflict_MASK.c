#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int Oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  ConversionRelationId 133 
 int /*<<< orphan*/  ERRCODE_DUPLICATE_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
#define  StatisticExtRelationId 132 
#define  TSConfigRelationId 131 
#define  TSDictionaryRelationId 130 
#define  TSParserRelationId 129 
#define  TSTemplateRelationId 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 char* FUNC7 (char*) ; 

__attribute__((used)) static void
FUNC8(Oid classId, const char *name, Oid nspOid)
{
	char	   *msgfmt;

	FUNC0(FUNC1(nspOid));

	switch (classId)
	{
		case ConversionRelationId:
			FUNC0(FUNC1(nspOid));
			msgfmt = FUNC7("conversion \"%s\" already exists in schema \"%s\"");
			break;
		case StatisticExtRelationId:
			FUNC0(FUNC1(nspOid));
			msgfmt = FUNC7("statistics object \"%s\" already exists in schema \"%s\"");
			break;
		case TSParserRelationId:
			FUNC0(FUNC1(nspOid));
			msgfmt = FUNC7("text search parser \"%s\" already exists in schema \"%s\"");
			break;
		case TSDictionaryRelationId:
			FUNC0(FUNC1(nspOid));
			msgfmt = FUNC7("text search dictionary \"%s\" already exists in schema \"%s\"");
			break;
		case TSTemplateRelationId:
			FUNC0(FUNC1(nspOid));
			msgfmt = FUNC7("text search template \"%s\" already exists in schema \"%s\"");
			break;
		case TSConfigRelationId:
			FUNC0(FUNC1(nspOid));
			msgfmt = FUNC7("text search configuration \"%s\" already exists in schema \"%s\"");
			break;
		default:
			FUNC2(ERROR, "unsupported object class %u", classId);
			break;
	}

	FUNC3(ERROR,
			(FUNC4(ERRCODE_DUPLICATE_OBJECT),
			 FUNC5(msgfmt, name, FUNC6(nspOid))));
}