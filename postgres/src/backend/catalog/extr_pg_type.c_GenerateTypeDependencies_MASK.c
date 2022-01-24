#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ typnamespace; scalar_t__ typinput; scalar_t__ typoutput; scalar_t__ typreceive; scalar_t__ typsend; scalar_t__ typmodin; scalar_t__ typmodout; scalar_t__ typanalyze; scalar_t__ typrelid; scalar_t__ typelem; scalar_t__ typbasetype; scalar_t__ typcollation; int /*<<< orphan*/  typowner; } ;
struct TYPE_8__ {scalar_t__ objectId; scalar_t__ objectSubId; void* classId; } ;
typedef  scalar_t__ Oid ;
typedef  TYPE_1__ ObjectAddress ;
typedef  int /*<<< orphan*/  Node ;
typedef  TYPE_2__* Form_pg_type ;

/* Variables and functions */
 void* CollationRelationId ; 
 scalar_t__ DEFAULT_COLLATION_OID ; 
 int /*<<< orphan*/  DEPENDENCY_INTERNAL ; 
 int /*<<< orphan*/  DEPENDENCY_NORMAL ; 
 int /*<<< orphan*/  NIL ; 
 void* NamespaceRelationId ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 void* ProcedureRelationId ; 
 char RELKIND_COMPOSITE_TYPE ; 
 void* RelationRelationId ; 
 void* TypeRelationId ; 
 int /*<<< orphan*/  FUNC1 (void*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC7 (void*,scalar_t__,int /*<<< orphan*/ ) ; 

void
FUNC8(Oid typeObjectId,
						 Form_pg_type typeForm,
						 Node *defaultExpr,
						 void *typacl,
						 char relationKind, /* only for relation rowtypes */
						 bool isImplicitArray,
						 bool isDependentType,
						 bool rebuild)
{
	ObjectAddress myself,
				referenced;

	/* If rebuild, first flush old dependencies, except extension deps */
	if (rebuild)
	{
		FUNC1(TypeRelationId, typeObjectId, true);
		FUNC2(TypeRelationId, typeObjectId, 0);
	}

	myself.classId = TypeRelationId;
	myself.objectId = typeObjectId;
	myself.objectSubId = 0;

	/*
	 * Make dependencies on namespace, owner, ACL, extension.
	 *
	 * Skip these for a dependent type, since it will have such dependencies
	 * indirectly through its depended-on type or relation.
	 */
	if (!isDependentType)
	{
		referenced.classId = NamespaceRelationId;
		referenced.objectId = typeForm->typnamespace;
		referenced.objectSubId = 0;
		FUNC3(&myself, &referenced, DEPENDENCY_NORMAL);

		FUNC7(TypeRelationId, typeObjectId,
								typeForm->typowner);

		FUNC6(TypeRelationId, typeObjectId, 0,
								 typeForm->typowner, typacl);

		FUNC4(&myself, rebuild);
	}

	/* Normal dependencies on the I/O functions */
	if (FUNC0(typeForm->typinput))
	{
		referenced.classId = ProcedureRelationId;
		referenced.objectId = typeForm->typinput;
		referenced.objectSubId = 0;
		FUNC3(&myself, &referenced, DEPENDENCY_NORMAL);
	}

	if (FUNC0(typeForm->typoutput))
	{
		referenced.classId = ProcedureRelationId;
		referenced.objectId = typeForm->typoutput;
		referenced.objectSubId = 0;
		FUNC3(&myself, &referenced, DEPENDENCY_NORMAL);
	}

	if (FUNC0(typeForm->typreceive))
	{
		referenced.classId = ProcedureRelationId;
		referenced.objectId = typeForm->typreceive;
		referenced.objectSubId = 0;
		FUNC3(&myself, &referenced, DEPENDENCY_NORMAL);
	}

	if (FUNC0(typeForm->typsend))
	{
		referenced.classId = ProcedureRelationId;
		referenced.objectId = typeForm->typsend;
		referenced.objectSubId = 0;
		FUNC3(&myself, &referenced, DEPENDENCY_NORMAL);
	}

	if (FUNC0(typeForm->typmodin))
	{
		referenced.classId = ProcedureRelationId;
		referenced.objectId = typeForm->typmodin;
		referenced.objectSubId = 0;
		FUNC3(&myself, &referenced, DEPENDENCY_NORMAL);
	}

	if (FUNC0(typeForm->typmodout))
	{
		referenced.classId = ProcedureRelationId;
		referenced.objectId = typeForm->typmodout;
		referenced.objectSubId = 0;
		FUNC3(&myself, &referenced, DEPENDENCY_NORMAL);
	}

	if (FUNC0(typeForm->typanalyze))
	{
		referenced.classId = ProcedureRelationId;
		referenced.objectId = typeForm->typanalyze;
		referenced.objectSubId = 0;
		FUNC3(&myself, &referenced, DEPENDENCY_NORMAL);
	}

	/*
	 * If the type is a rowtype for a relation, mark it as internally
	 * dependent on the relation, *unless* it is a stand-alone composite type
	 * relation. For the latter case, we have to reverse the dependency.
	 *
	 * In the former case, this allows the type to be auto-dropped when the
	 * relation is, and not otherwise. And in the latter, of course we get the
	 * opposite effect.
	 */
	if (FUNC0(typeForm->typrelid))
	{
		referenced.classId = RelationRelationId;
		referenced.objectId = typeForm->typrelid;
		referenced.objectSubId = 0;

		if (relationKind != RELKIND_COMPOSITE_TYPE)
			FUNC3(&myself, &referenced, DEPENDENCY_INTERNAL);
		else
			FUNC3(&referenced, &myself, DEPENDENCY_INTERNAL);
	}

	/*
	 * If the type is an implicitly-created array type, mark it as internally
	 * dependent on the element type.  Otherwise, if it has an element type,
	 * the dependency is a normal one.
	 */
	if (FUNC0(typeForm->typelem))
	{
		referenced.classId = TypeRelationId;
		referenced.objectId = typeForm->typelem;
		referenced.objectSubId = 0;
		FUNC3(&myself, &referenced,
						   isImplicitArray ? DEPENDENCY_INTERNAL : DEPENDENCY_NORMAL);
	}

	/* Normal dependency from a domain to its base type. */
	if (FUNC0(typeForm->typbasetype))
	{
		referenced.classId = TypeRelationId;
		referenced.objectId = typeForm->typbasetype;
		referenced.objectSubId = 0;
		FUNC3(&myself, &referenced, DEPENDENCY_NORMAL);
	}

	/* Normal dependency from a domain to its collation. */
	/* We know the default collation is pinned, so don't bother recording it */
	if (FUNC0(typeForm->typcollation) &&
		typeForm->typcollation != DEFAULT_COLLATION_OID)
	{
		referenced.classId = CollationRelationId;
		referenced.objectId = typeForm->typcollation;
		referenced.objectSubId = 0;
		FUNC3(&myself, &referenced, DEPENDENCY_NORMAL);
	}

	/* Normal dependency on the default expression. */
	if (defaultExpr)
		FUNC5(&myself, defaultExpr, NIL, DEPENDENCY_NORMAL);
}