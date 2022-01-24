#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  createdb_dtemplate; } ;
struct TYPE_9__ {int dropflags; } ;
struct TYPE_8__ {int result; int /*<<< orphan*/  ereport_on_violation; } ;
struct TYPE_7__ {int is_internal; } ;
struct TYPE_6__ {int is_internal; } ;
typedef  int const Oid ;
typedef  int ObjectAccessType ;
typedef  TYPE_1__ ObjectAccessPostCreate ;
typedef  TYPE_2__ ObjectAccessPostAlter ;
typedef  TYPE_3__ ObjectAccessNamespaceSearch ;
typedef  TYPE_4__ ObjectAccessDrop ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  DatabaseRelationId 136 
 int /*<<< orphan*/  ERROR ; 
#define  NamespaceRelationId 135 
#define  OAT_DROP 134 
#define  OAT_FUNCTION_EXECUTE 133 
#define  OAT_NAMESPACE_SEARCH 132 
#define  OAT_POST_ALTER 131 
#define  OAT_POST_CREATE 130 
 int PERFORM_DELETION_INTERNAL ; 
#define  ProcedureRelationId 129 
#define  RelationRelationId 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int const,int const,int,void*) ; 
 int /*<<< orphan*/  FUNC3 (int const,int) ; 
 int /*<<< orphan*/  FUNC4 (int const,int) ; 
 int /*<<< orphan*/  FUNC5 (int const,int) ; 
 TYPE_5__ sepgsql_context_info ; 
 int /*<<< orphan*/  FUNC6 (int const) ; 
 int /*<<< orphan*/  FUNC7 (int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int const) ; 
 int /*<<< orphan*/  FUNC9 (int const) ; 
 int /*<<< orphan*/  FUNC10 (int const) ; 
 int /*<<< orphan*/  FUNC11 (int const) ; 
 int /*<<< orphan*/  FUNC12 (int const) ; 
 int /*<<< orphan*/  FUNC13 (int const) ; 
 int /*<<< orphan*/  FUNC14 (int const) ; 
 int /*<<< orphan*/  FUNC15 (int const) ; 
 int /*<<< orphan*/  FUNC16 (int const) ; 
 int /*<<< orphan*/  FUNC17 (int const) ; 
 int FUNC18 (int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int const) ; 
 int /*<<< orphan*/  FUNC20 (int,int const,int const,int,void*) ; 

__attribute__((used)) static void
FUNC21(ObjectAccessType access,
					  Oid classId,
					  Oid objectId,
					  int subId,
					  void *arg)
{
	if (&next_object_access_hook)
		FUNC2) (access, classId, objectId, subId, arg);

	switch (access)
	{
		case OAT_POST_CREATE:
			{
				ObjectAccessPostCreate *pc_arg = arg;
				bool		is_internal;

				is_internal = pc_arg ? pc_arg->is_internal : false;

				switch (classId)
				{
					case DatabaseRelationId:
						FUNC0(!is_internal);
						FUNC7(objectId,
													 sepgsql_context_info.createdb_dtemplate);
						break;

					case NamespaceRelationId:
						FUNC0(!is_internal);
						FUNC17(objectId);
						break;

					case RelationRelationId:
						if (subId == 0)
						{
							/*
							 * The cases in which we want to apply permission
							 * checks on creation of a new relation correspond
							 * to direct user invocation.  For internal uses,
							 * that is creation of toast tables, index rebuild
							 * or ALTER TABLE commands, we need neither
							 * assignment of security labels nor permission
							 * checks.
							 */
							if (is_internal)
								break;

							FUNC14(objectId);
						}
						else
							FUNC4(objectId, subId);
						break;

					case ProcedureRelationId:
						FUNC0(!is_internal);
						FUNC11(objectId);
						break;

					default:
						/* Ignore unsupported object classes */
						break;
				}
			}
			break;

		case OAT_DROP:
			{
				ObjectAccessDrop *drop_arg = (ObjectAccessDrop *) arg;

				/*
				 * No need to apply permission checks on object deletion due
				 * to internal cleanups; such as removal of temporary database
				 * object on session closed.
				 */
				if ((drop_arg->dropflags & PERFORM_DELETION_INTERNAL) != 0)
					break;

				switch (classId)
				{
					case DatabaseRelationId:
						FUNC6(objectId);
						break;

					case NamespaceRelationId:
						FUNC16(objectId);
						break;

					case RelationRelationId:
						if (subId == 0)
							FUNC13(objectId);
						else
							FUNC3(objectId, subId);
						break;

					case ProcedureRelationId:
						FUNC9(objectId);
						break;

					default:
						/* Ignore unsupported object classes */
						break;
				}
			}
			break;

		case OAT_POST_ALTER:
			{
				ObjectAccessPostAlter *pa_arg = arg;
				bool		is_internal = pa_arg->is_internal;

				switch (classId)
				{
					case DatabaseRelationId:
						FUNC0(!is_internal);
						FUNC8(objectId);
						break;

					case NamespaceRelationId:
						FUNC0(!is_internal);
						FUNC19(objectId);
						break;

					case RelationRelationId:
						if (subId == 0)
						{
							/*
							 * A case when we don't want to apply permission
							 * check is that relation is internally altered
							 * without user's intention. E.g, no need to check
							 * on toast table/index to be renamed at end of
							 * the table rewrites.
							 */
							if (is_internal)
								break;

							FUNC15(objectId);
						}
						else
							FUNC5(objectId, subId);
						break;

					case ProcedureRelationId:
						FUNC0(!is_internal);
						FUNC12(objectId);
						break;

					default:
						/* Ignore unsupported object classes */
						break;
				}
			}
			break;

		case OAT_NAMESPACE_SEARCH:
			{
				ObjectAccessNamespaceSearch *ns_arg = arg;

				/*
				 * If stacked extension already decided not to allow users to
				 * search this schema, we just stick with that decision.
				 */
				if (!ns_arg->result)
					break;

				FUNC0(classId == NamespaceRelationId);
				FUNC0(ns_arg->result);
				ns_arg->result
					= FUNC18(objectId,
											ns_arg->ereport_on_violation);
			}
			break;

		case OAT_FUNCTION_EXECUTE:
			{
				FUNC0(classId == ProcedureRelationId);
				FUNC10(objectId);
			}
			break;

		default:
			FUNC1(ERROR, "unexpected object access type: %d", (int) access);
			break;
	}
}