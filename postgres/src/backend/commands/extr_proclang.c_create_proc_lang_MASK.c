#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  values ;
typedef  int /*<<< orphan*/  replaces ;
typedef  int /*<<< orphan*/  nulls ;
typedef  int /*<<< orphan*/  TupleDesc ;
struct TYPE_19__ {void* oid; } ;
struct TYPE_18__ {int /*<<< orphan*/  t_self; } ;
struct TYPE_17__ {void* objectId; scalar_t__ objectSubId; void* classId; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  void* Oid ;
typedef  TYPE_1__ ObjectAddress ;
typedef  int /*<<< orphan*/  NameData ;
typedef  TYPE_2__* HeapTuple ;
typedef  TYPE_3__* Form_pg_language ;
typedef  int Datum ;

/* Variables and functions */
 int /*<<< orphan*/  ACLCHECK_NOT_OWNER ; 
 int Anum_pg_language_lanacl ; 
 int Anum_pg_language_laninline ; 
 int Anum_pg_language_lanispl ; 
 int Anum_pg_language_lanname ; 
 int Anum_pg_language_lanowner ; 
 int Anum_pg_language_lanplcallfoid ; 
 int Anum_pg_language_lanpltrusted ; 
 int Anum_pg_language_lanvalidator ; 
 int Anum_pg_language_oid ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  DEPENDENCY_NORMAL ; 
 int /*<<< orphan*/  ERRCODE_DUPLICATE_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LANGNAME ; 
 int /*<<< orphan*/  LanguageOidIndexId ; 
 void* LanguageRelationId ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int Natts_pg_language ; 
 int /*<<< orphan*/  OBJECT_LANGUAGE ; 
 int FUNC8 (void*) ; 
 scalar_t__ FUNC9 (void*) ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 
 void* ProcedureRelationId ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 TYPE_2__* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC15 (void*,void*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*,char const*) ; 
 TYPE_2__* FUNC19 (int /*<<< orphan*/ ,int*,int*) ; 
 TYPE_2__* FUNC20 (TYPE_2__*,int /*<<< orphan*/ ,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC21 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC23 (void*,void*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC26 (void*,void*,void*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ObjectAddress
FUNC29(const char *languageName, bool replace,
				 Oid languageOwner, Oid handlerOid, Oid inlineOid,
				 Oid valOid, bool trusted)
{
	Relation	rel;
	TupleDesc	tupDesc;
	Datum		values[Natts_pg_language];
	bool		nulls[Natts_pg_language];
	bool		replaces[Natts_pg_language];
	NameData	langname;
	HeapTuple	oldtup;
	HeapTuple	tup;
	Oid			langoid;
	bool		is_update;
	ObjectAddress myself,
				referenced;

	rel = FUNC28(LanguageRelationId, RowExclusiveLock);
	tupDesc = FUNC11(rel);

	/* Prepare data to be inserted */
	FUNC21(values, 0, sizeof(values));
	FUNC21(nulls, false, sizeof(nulls));
	FUNC21(replaces, true, sizeof(replaces));

	FUNC22(&langname, languageName);
	values[Anum_pg_language_lanname - 1] = FUNC7(&langname);
	values[Anum_pg_language_lanowner - 1] = FUNC8(languageOwner);
	values[Anum_pg_language_lanispl - 1] = FUNC0(true);
	values[Anum_pg_language_lanpltrusted - 1] = FUNC0(trusted);
	values[Anum_pg_language_lanplcallfoid - 1] = FUNC8(handlerOid);
	values[Anum_pg_language_laninline - 1] = FUNC8(inlineOid);
	values[Anum_pg_language_lanvalidator - 1] = FUNC8(valOid);
	nulls[Anum_pg_language_lanacl - 1] = true;

	/* Check for pre-existing definition */
	oldtup = FUNC13(LANGNAME, FUNC10(languageName));

	if (FUNC5(oldtup))
	{
		Form_pg_language oldform = (Form_pg_language) FUNC3(oldtup);

		/* There is one; okay to replace it? */
		if (!replace)
			FUNC16(ERROR,
					(FUNC17(ERRCODE_DUPLICATE_OBJECT),
					 FUNC18("language \"%s\" already exists", languageName)));
		if (!FUNC23(oldform->oid, languageOwner))
			FUNC14(ACLCHECK_NOT_OWNER, OBJECT_LANGUAGE,
						   languageName);

		/*
		 * Do not change existing oid, ownership or permissions.  Note
		 * dependency-update code below has to agree with this decision.
		 */
		replaces[Anum_pg_language_oid - 1] = false;
		replaces[Anum_pg_language_lanowner - 1] = false;
		replaces[Anum_pg_language_lanacl - 1] = false;

		/* Okay, do it... */
		tup = FUNC20(oldtup, tupDesc, values, nulls, replaces);
		FUNC2(rel, &tup->t_self, tup);

		langoid = oldform->oid;
		FUNC12(oldtup);
		is_update = true;
	}
	else
	{
		/* Creating a new language */
		langoid = FUNC4(rel, LanguageOidIndexId,
									 Anum_pg_language_oid);
		values[Anum_pg_language_oid - 1] = FUNC8(langoid);
		tup = FUNC19(tupDesc, values, nulls);
		FUNC1(rel, tup);
		is_update = false;
	}

	/*
	 * Create dependencies for the new language.  If we are updating an
	 * existing language, first delete any existing pg_depend entries.
	 * (However, since we are not changing ownership or permissions, the
	 * shared dependencies do *not* need to change, and we leave them alone.)
	 */
	myself.classId = LanguageRelationId;
	myself.objectId = langoid;
	myself.objectSubId = 0;

	if (is_update)
		FUNC15(myself.classId, myself.objectId, true);

	/* dependency on owner of language */
	if (!is_update)
		FUNC26(myself.classId, myself.objectId,
								languageOwner);

	/* dependency on extension */
	FUNC25(&myself, is_update);

	/* dependency on the PL handler function */
	referenced.classId = ProcedureRelationId;
	referenced.objectId = handlerOid;
	referenced.objectSubId = 0;
	FUNC24(&myself, &referenced, DEPENDENCY_NORMAL);

	/* dependency on the inline handler function, if any */
	if (FUNC9(inlineOid))
	{
		referenced.classId = ProcedureRelationId;
		referenced.objectId = inlineOid;
		referenced.objectSubId = 0;
		FUNC24(&myself, &referenced, DEPENDENCY_NORMAL);
	}

	/* dependency on the validator function, if any */
	if (FUNC9(valOid))
	{
		referenced.classId = ProcedureRelationId;
		referenced.objectId = valOid;
		referenced.objectSubId = 0;
		FUNC24(&myself, &referenced, DEPENDENCY_NORMAL);
	}

	/* Post creation hook for new procedural language */
	FUNC6(LanguageRelationId, myself.objectId, 0);

	FUNC27(rel, RowExclusiveLock);

	return myself;
}