#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int locktag_field1; scalar_t__ locktag_type; int /*<<< orphan*/  locktag_field4; int /*<<< orphan*/  locktag_field3; int /*<<< orphan*/  locktag_field2; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int /*<<< orphan*/  LockTagType ;
typedef  TYPE_1__ LOCKTAG ;

/* Variables and functions */
#define  LOCKTAG_ADVISORY 137 
#define  LOCKTAG_OBJECT 136 
#define  LOCKTAG_PAGE 135 
#define  LOCKTAG_RELATION 134 
#define  LOCKTAG_RELATION_EXTEND 133 
#define  LOCKTAG_SPECULATIVE_TOKEN 132 
#define  LOCKTAG_TRANSACTION 131 
#define  LOCKTAG_TUPLE 130 
#define  LOCKTAG_USERLOCK 129 
#define  LOCKTAG_VIRTUALTRANSACTION 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,...) ; 

void
FUNC2(StringInfo buf, const LOCKTAG *tag)
{
	switch ((LockTagType) tag->locktag_type)
	{
		case LOCKTAG_RELATION:
			FUNC1(buf,
							 FUNC0("relation %u of database %u"),
							 tag->locktag_field2,
							 tag->locktag_field1);
			break;
		case LOCKTAG_RELATION_EXTEND:
			FUNC1(buf,
							 FUNC0("extension of relation %u of database %u"),
							 tag->locktag_field2,
							 tag->locktag_field1);
			break;
		case LOCKTAG_PAGE:
			FUNC1(buf,
							 FUNC0("page %u of relation %u of database %u"),
							 tag->locktag_field3,
							 tag->locktag_field2,
							 tag->locktag_field1);
			break;
		case LOCKTAG_TUPLE:
			FUNC1(buf,
							 FUNC0("tuple (%u,%u) of relation %u of database %u"),
							 tag->locktag_field3,
							 tag->locktag_field4,
							 tag->locktag_field2,
							 tag->locktag_field1);
			break;
		case LOCKTAG_TRANSACTION:
			FUNC1(buf,
							 FUNC0("transaction %u"),
							 tag->locktag_field1);
			break;
		case LOCKTAG_VIRTUALTRANSACTION:
			FUNC1(buf,
							 FUNC0("virtual transaction %d/%u"),
							 tag->locktag_field1,
							 tag->locktag_field2);
			break;
		case LOCKTAG_SPECULATIVE_TOKEN:
			FUNC1(buf,
							 FUNC0("speculative token %u of transaction %u"),
							 tag->locktag_field2,
							 tag->locktag_field1);
			break;
		case LOCKTAG_OBJECT:
			FUNC1(buf,
							 FUNC0("object %u of class %u of database %u"),
							 tag->locktag_field3,
							 tag->locktag_field2,
							 tag->locktag_field1);
			break;
		case LOCKTAG_USERLOCK:
			/* reserved for old contrib code, now on pgfoundry */
			FUNC1(buf,
							 FUNC0("user lock [%u,%u,%u]"),
							 tag->locktag_field1,
							 tag->locktag_field2,
							 tag->locktag_field3);
			break;
		case LOCKTAG_ADVISORY:
			FUNC1(buf,
							 FUNC0("advisory lock [%u,%u,%u,%u]"),
							 tag->locktag_field1,
							 tag->locktag_field2,
							 tag->locktag_field3,
							 tag->locktag_field4);
			break;
		default:
			FUNC1(buf,
							 FUNC0("unrecognized locktag type %d"),
							 (int) tag->locktag_type);
			break;
	}
}