#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  UNICODE_STRING ;
struct TYPE_10__ {int /*<<< orphan*/  dwFlag; } ;
struct TYPE_8__ {int /*<<< orphan*/  dwFlag; int /*<<< orphan*/  usnTimeChanged; int /*<<< orphan*/  usnOriginating; int /*<<< orphan*/  uidOriginatingDsa; } ;
struct TYPE_9__ {TYPE_1__ MetaData; } ;
typedef  TYPE_2__* PDCSHADOW_PUSH_REQUEST_OBJECT_ATTRIBUTE ;
typedef  TYPE_3__* PDCSHADOW_PUSH_REQUEST_OBJECT ;
typedef  int /*<<< orphan*/  PDCSHADOW_PUSH_REQUEST ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/ * LPCWSTR ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OBJECT_DYNAMIC ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  REPLICATION_TIME_SET ; 
 int /*<<< orphan*/  REPLICATION_UID_SET ; 
 int /*<<< orphan*/  REPLICATION_USN_SET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_3__*,TYPE_2__**) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_3__**) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int,int /*<<< orphan*/ **,char*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

NTSTATUS FUNC13(PDCSHADOW_PUSH_REQUEST request, int argc, wchar_t * argv[])
{
	LPCWSTR szObject, szAttribute, szValue = NULL, szSid = NULL, szReplOriginatingUid = NULL, szReplOriginatingUsn = NULL, szReplOriginatingTime = NULL;
	PDCSHADOW_PUSH_REQUEST_OBJECT pObject;
	PDCSHADOW_PUSH_REQUEST_OBJECT_ATTRIBUTE pAttribute;
	BOOL cleanData = FUNC10(argc, argv, L"clean", NULL, NULL), multipleValues = FUNC10(argc, argv, L"multiple", NULL, NULL);
	UNICODE_STRING us;

	if(FUNC10(argc, argv, L"object", &szObject, NULL))
	{
		if(FUNC10(argc, argv, L"attribute", &szAttribute, NULL))
		{
			if(FUNC10(argc, argv, L"value", &szValue, NULL))
			{
				if(FUNC6(request, szObject, &pObject))
				{
					if(FUNC5(request, szAttribute, pObject, &pAttribute))
					{
						if(FUNC7(szValue, pAttribute, multipleValues))
						{
							if(FUNC10(argc, argv, L"replOriginatingUid", &szReplOriginatingUid, NULL))
							{
								FUNC3(&us, szReplOriginatingUid);
								if(FUNC0(FUNC2(&us, &(pAttribute->MetaData.uidOriginatingDsa))))
									pAttribute->MetaData.dwFlag |= REPLICATION_UID_SET;
								else FUNC1(L"unable parse replOriginatingUid\n");
							}
							if(FUNC10(argc, argv, L"replOriginatingUsn", &szReplOriginatingUsn, NULL))
							{
								pAttribute->MetaData.usnOriginating = FUNC12(szReplOriginatingUsn, NULL, 0);
								pAttribute->MetaData.dwFlag |= REPLICATION_USN_SET;
							}
							if(FUNC10(argc, argv, L"replOriginatingTime", &szReplOriginatingTime, NULL))
							{
								if(FUNC11(szReplOriginatingTime, &pAttribute->MetaData.usnTimeChanged))
									pAttribute->MetaData.dwFlag |= REPLICATION_TIME_SET;
								else FUNC1(L"unable parse replOriginatingTime\n");
							}
							if(FUNC10(argc, argv, L"dynamic", NULL, NULL))
							{
								pObject->dwFlag |= OBJECT_DYNAMIC;
							}
						}
						else FUNC1(L"unable to set value\n");
					}
					else FUNC1(L"unable to add attribute\n");
				}
				else FUNC1(L"unable to add object\n");
			}
			else if(cleanData)
			{
				if(!FUNC8(request, szObject, szAttribute))
					FUNC1(L"object or attribute not found\n");
			}
			else FUNC1(L"value missing\n");
		}
		else if(cleanData)
		{
			if(!FUNC9(request, szObject))
				FUNC1(L"object not found\n");
		}
		else FUNC1(L"attribute missing\n");
	}
	else
	{
		if(cleanData)
			FUNC4(request);
		else FUNC1(L"object missing\n");
	}
	return ERROR_SUCCESS;
}