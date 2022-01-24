#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  dicttemplate; int /*<<< orphan*/  dictowner; int /*<<< orphan*/  dictnamespace; int /*<<< orphan*/  oid; } ;
struct TYPE_7__ {scalar_t__ objectSubId; int /*<<< orphan*/  objectId; int /*<<< orphan*/  classId; } ;
typedef  TYPE_1__ ObjectAddress ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_2__* Form_pg_ts_dict ;

/* Variables and functions */
 int /*<<< orphan*/  DEPENDENCY_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NamespaceRelationId ; 
 int /*<<< orphan*/  TSDictionaryRelationId ; 
 int /*<<< orphan*/  TSTemplateRelationId ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ObjectAddress
FUNC4(HeapTuple tuple)
{
	Form_pg_ts_dict dict = (Form_pg_ts_dict) FUNC0(tuple);
	ObjectAddress myself,
				referenced;

	myself.classId = TSDictionaryRelationId;
	myself.objectId = dict->oid;
	myself.objectSubId = 0;

	/* dependency on namespace */
	referenced.classId = NamespaceRelationId;
	referenced.objectId = dict->dictnamespace;
	referenced.objectSubId = 0;
	FUNC1(&myself, &referenced, DEPENDENCY_NORMAL);

	/* dependency on owner */
	FUNC3(myself.classId, myself.objectId, dict->dictowner);

	/* dependency on extension */
	FUNC2(&myself, false);

	/* dependency on template */
	referenced.classId = TSTemplateRelationId;
	referenced.objectId = dict->dicttemplate;
	referenced.objectSubId = 0;
	FUNC1(&myself, &referenced, DEPENDENCY_NORMAL);

	return myself;
}