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
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_4__ {scalar_t__ objectSubId; int /*<<< orphan*/  objectId; int /*<<< orphan*/  classId; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__ ObjectAddress ;

/* Variables and functions */
 int /*<<< orphan*/  NamespaceRelationId ; 
 int /*<<< orphan*/  SEPG_CLASS_DB_SCHEMA ; 
 char* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static bool
FUNC3(Oid namespaceId, uint32 required, bool abort_on_violation)
{
	ObjectAddress object;
	char	   *audit_name;
	bool		result;

	object.classId = NamespaceRelationId;
	object.objectId = namespaceId;
	object.objectSubId = 0;
	audit_name = FUNC0(&object);

	result = FUNC2(&object,
									 SEPG_CLASS_DB_SCHEMA,
									 required,
									 audit_name,
									 abort_on_violation);
	FUNC1(audit_name);

	return result;
}