#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  objectId; int /*<<< orphan*/  objectSubId; } ;
typedef  TYPE_1__ ObjectAddress ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
#define  OCLASS_AM 165 
#define  OCLASS_AMOP 164 
#define  OCLASS_AMPROC 163 
#define  OCLASS_CAST 162 
#define  OCLASS_CLASS 161 
#define  OCLASS_COLLATION 160 
#define  OCLASS_CONSTRAINT 159 
#define  OCLASS_CONVERSION 158 
#define  OCLASS_DATABASE 157 
#define  OCLASS_DEFACL 156 
#define  OCLASS_DEFAULT 155 
#define  OCLASS_EVENT_TRIGGER 154 
#define  OCLASS_EXTENSION 153 
#define  OCLASS_FDW 152 
#define  OCLASS_FOREIGN_SERVER 151 
#define  OCLASS_LANGUAGE 150 
#define  OCLASS_LARGEOBJECT 149 
#define  OCLASS_OPCLASS 148 
#define  OCLASS_OPERATOR 147 
#define  OCLASS_OPFAMILY 146 
#define  OCLASS_POLICY 145 
#define  OCLASS_PROC 144 
#define  OCLASS_PUBLICATION 143 
#define  OCLASS_PUBLICATION_REL 142 
#define  OCLASS_REWRITE 141 
#define  OCLASS_ROLE 140 
#define  OCLASS_SCHEMA 139 
#define  OCLASS_STATISTIC_EXT 138 
#define  OCLASS_SUBSCRIPTION 137 
#define  OCLASS_TBLSPACE 136 
#define  OCLASS_TRANSFORM 135 
#define  OCLASS_TRIGGER 134 
#define  OCLASS_TSCONFIG 133 
#define  OCLASS_TSDICT 132 
#define  OCLASS_TSPARSER 131 
#define  OCLASS_TSTEMPLATE 130 
#define  OCLASS_TYPE 129 
#define  OCLASS_USER_MAPPING 128 
 int PERFORM_DELETION_CONCURRENTLY ; 
 int PERFORM_DELETION_CONCURRENT_LOCK ; 
 char RELKIND_INDEX ; 
 char RELKIND_PARTITIONED_INDEX ; 
 char RELKIND_SEQUENCE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ ,char*) ; 
 int FUNC37 (TYPE_1__ const*) ; 
 char FUNC38 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC40 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC41(const ObjectAddress *object, int flags)
{
	switch (FUNC37(object))
	{
		case OCLASS_CLASS:
			{
				char		relKind = FUNC38(object->objectId);

				if (relKind == RELKIND_INDEX ||
					relKind == RELKIND_PARTITIONED_INDEX)
				{
					bool		concurrent = ((flags & PERFORM_DELETION_CONCURRENTLY) != 0);
					bool		concurrent_lock_mode = ((flags & PERFORM_DELETION_CONCURRENT_LOCK) != 0);

					FUNC0(object->objectSubId == 0);
					FUNC40(object->objectId, concurrent, concurrent_lock_mode);
				}
				else
				{
					if (object->objectSubId != 0)
						FUNC10(object->objectId,
											object->objectSubId);
					else
						FUNC39(object->objectId);
				}

				/*
				 * for a sequence, in addition to dropping the heap, also
				 * delete pg_sequence tuple
				 */
				if (relKind == RELKIND_SEQUENCE)
					FUNC1(object->objectId);
				break;
			}

		case OCLASS_PROC:
			FUNC19(object->objectId);
			break;

		case OCLASS_TYPE:
			FUNC34(object->objectId);
			break;

		case OCLASS_CAST:
			FUNC2(object->objectId);
			break;

		case OCLASS_COLLATION:
			FUNC11(object->objectId);
			break;

		case OCLASS_CONSTRAINT:
			FUNC12(object->objectId);
			break;

		case OCLASS_CONVERSION:
			FUNC13(object->objectId);
			break;

		case OCLASS_DEFAULT:
			FUNC9(object->objectId);
			break;

		case OCLASS_LANGUAGE:
			FUNC3(object->objectId);
			break;

		case OCLASS_LARGEOBJECT:
			FUNC5(object->objectId);
			break;

		case OCLASS_OPERATOR:
			FUNC22(object->objectId);
			break;

		case OCLASS_OPCLASS:
			FUNC20(object->objectId);
			break;

		case OCLASS_OPFAMILY:
			FUNC21(object->objectId);
			break;

		case OCLASS_AM:
			FUNC6(object->objectId);
			break;

		case OCLASS_AMOP:
			FUNC7(object->objectId);
			break;

		case OCLASS_AMPROC:
			FUNC8(object->objectId);
			break;

		case OCLASS_REWRITE:
			FUNC26(object->objectId);
			break;

		case OCLASS_TRIGGER:
			FUNC33(object->objectId);
			break;

		case OCLASS_SCHEMA:
			FUNC27(object->objectId);
			break;

		case OCLASS_STATISTIC_EXT:
			FUNC28(object->objectId);
			break;

		case OCLASS_TSPARSER:
			FUNC31(object->objectId);
			break;

		case OCLASS_TSDICT:
			FUNC30(object->objectId);
			break;

		case OCLASS_TSTEMPLATE:
			FUNC32(object->objectId);
			break;

		case OCLASS_TSCONFIG:
			FUNC29(object->objectId);
			break;

			/*
			 * OCLASS_ROLE, OCLASS_DATABASE, OCLASS_TBLSPACE intentionally not
			 * handled here
			 */

		case OCLASS_FDW:
			FUNC17(object->objectId);
			break;

		case OCLASS_FOREIGN_SERVER:
			FUNC18(object->objectId);
			break;

		case OCLASS_USER_MAPPING:
			FUNC35(object->objectId);
			break;

		case OCLASS_DEFACL:
			FUNC14(object->objectId);
			break;

		case OCLASS_EXTENSION:
			FUNC16(object->objectId);
			break;

		case OCLASS_EVENT_TRIGGER:
			FUNC15(object->objectId);
			break;

		case OCLASS_POLICY:
			FUNC23(object->objectId);
			break;

		case OCLASS_PUBLICATION:
			FUNC24(object->objectId);
			break;

		case OCLASS_PUBLICATION_REL:
			FUNC25(object->objectId);
			break;

		case OCLASS_TRANSFORM:
			FUNC4(object->objectId);
			break;

			/*
			 * These global object types are not supported here.
			 */
		case OCLASS_ROLE:
		case OCLASS_DATABASE:
		case OCLASS_TBLSPACE:
		case OCLASS_SUBSCRIPTION:
			FUNC36(ERROR, "global objects cannot be deleted by doDeletion");
			break;

			/*
			 * There's intentionally no default: case here; we want the
			 * compiler to warn if a new OCLASS hasn't been handled above.
			 */
	}
}