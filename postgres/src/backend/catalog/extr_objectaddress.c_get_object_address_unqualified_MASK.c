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
typedef  int /*<<< orphan*/  Value ;
struct TYPE_3__ {int /*<<< orphan*/  objectSubId; void* objectId; void* classId; } ;
typedef  int ObjectType ;
typedef  TYPE_1__ ObjectAddress ;

/* Variables and functions */
 void* AccessMethodRelationId ; 
 void* AuthIdRelationId ; 
 void* DatabaseRelationId ; 
 int /*<<< orphan*/  ERROR ; 
 void* EventTriggerRelationId ; 
 void* ExtensionRelationId ; 
 void* ForeignDataWrapperRelationId ; 
 void* ForeignServerRelationId ; 
 void* InvalidOid ; 
 void* LanguageRelationId ; 
 void* NamespaceRelationId ; 
#define  OBJECT_ACCESS_METHOD 139 
#define  OBJECT_DATABASE 138 
#define  OBJECT_EVENT_TRIGGER 137 
#define  OBJECT_EXTENSION 136 
#define  OBJECT_FDW 135 
#define  OBJECT_FOREIGN_SERVER 134 
#define  OBJECT_LANGUAGE 133 
#define  OBJECT_PUBLICATION 132 
#define  OBJECT_ROLE 131 
#define  OBJECT_SCHEMA 130 
#define  OBJECT_SUBSCRIPTION 129 
#define  OBJECT_TABLESPACE 128 
 void* PublicationRelationId ; 
 void* SubscriptionRelationId ; 
 void* TableSpaceRelationId ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 void* FUNC1 (char const*,int) ; 
 void* FUNC2 (char const*,int) ; 
 void* FUNC3 (char const*,int) ; 
 void* FUNC4 (char const*,int) ; 
 void* FUNC5 (char const*,int) ; 
 void* FUNC6 (char const*,int) ; 
 void* FUNC7 (char const*,int) ; 
 void* FUNC8 (char const*,int) ; 
 void* FUNC9 (char const*,int) ; 
 void* FUNC10 (char const*,int) ; 
 void* FUNC11 (char const*,int) ; 
 void* FUNC12 (char const*,int) ; 
 char* FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ObjectAddress
FUNC14(ObjectType objtype,
							   Value *strval, bool missing_ok)
{
	const char *name;
	ObjectAddress address;

	name = FUNC13(strval);

	/* Translate name to OID. */
	switch (objtype)
	{
		case OBJECT_ACCESS_METHOD:
			address.classId = AccessMethodRelationId;
			address.objectId = FUNC1(name, missing_ok);
			address.objectSubId = 0;
			break;
		case OBJECT_DATABASE:
			address.classId = DatabaseRelationId;
			address.objectId = FUNC2(name, missing_ok);
			address.objectSubId = 0;
			break;
		case OBJECT_EXTENSION:
			address.classId = ExtensionRelationId;
			address.objectId = FUNC4(name, missing_ok);
			address.objectSubId = 0;
			break;
		case OBJECT_TABLESPACE:
			address.classId = TableSpaceRelationId;
			address.objectId = FUNC12(name, missing_ok);
			address.objectSubId = 0;
			break;
		case OBJECT_ROLE:
			address.classId = AuthIdRelationId;
			address.objectId = FUNC10(name, missing_ok);
			address.objectSubId = 0;
			break;
		case OBJECT_SCHEMA:
			address.classId = NamespaceRelationId;
			address.objectId = FUNC8(name, missing_ok);
			address.objectSubId = 0;
			break;
		case OBJECT_LANGUAGE:
			address.classId = LanguageRelationId;
			address.objectId = FUNC7(name, missing_ok);
			address.objectSubId = 0;
			break;
		case OBJECT_FDW:
			address.classId = ForeignDataWrapperRelationId;
			address.objectId = FUNC5(name, missing_ok);
			address.objectSubId = 0;
			break;
		case OBJECT_FOREIGN_SERVER:
			address.classId = ForeignServerRelationId;
			address.objectId = FUNC6(name, missing_ok);
			address.objectSubId = 0;
			break;
		case OBJECT_EVENT_TRIGGER:
			address.classId = EventTriggerRelationId;
			address.objectId = FUNC3(name, missing_ok);
			address.objectSubId = 0;
			break;
		case OBJECT_PUBLICATION:
			address.classId = PublicationRelationId;
			address.objectId = FUNC9(name, missing_ok);
			address.objectSubId = 0;
			break;
		case OBJECT_SUBSCRIPTION:
			address.classId = SubscriptionRelationId;
			address.objectId = FUNC11(name, missing_ok);
			address.objectSubId = 0;
			break;
		default:
			FUNC0(ERROR, "unrecognized objtype: %d", (int) objtype);
			/* placate compiler, which doesn't know elog won't return */
			address.classId = InvalidOid;
			address.objectId = InvalidOid;
			address.objectSubId = 0;
	}

	return address;
}