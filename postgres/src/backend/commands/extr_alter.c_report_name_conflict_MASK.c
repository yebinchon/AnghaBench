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
 int /*<<< orphan*/  ERRCODE_DUPLICATE_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
#define  EventTriggerRelationId 133 
#define  ForeignDataWrapperRelationId 132 
#define  ForeignServerRelationId 131 
#define  LanguageRelationId 130 
#define  PublicationRelationId 129 
#define  SubscriptionRelationId 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 char* FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5(Oid classId, const char *name)
{
	char	   *msgfmt;

	switch (classId)
	{
		case EventTriggerRelationId:
			msgfmt = FUNC4("event trigger \"%s\" already exists");
			break;
		case ForeignDataWrapperRelationId:
			msgfmt = FUNC4("foreign-data wrapper \"%s\" already exists");
			break;
		case ForeignServerRelationId:
			msgfmt = FUNC4("server \"%s\" already exists");
			break;
		case LanguageRelationId:
			msgfmt = FUNC4("language \"%s\" already exists");
			break;
		case PublicationRelationId:
			msgfmt = FUNC4("publication \"%s\" already exists");
			break;
		case SubscriptionRelationId:
			msgfmt = FUNC4("subscription \"%s\" already exists");
			break;
		default:
			FUNC0(ERROR, "unsupported object class %u", classId);
			break;
	}

	FUNC1(ERROR,
			(FUNC2(ERRCODE_DUPLICATE_OBJECT),
			 FUNC3(msgfmt, name)));
}