#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  MaximumLength; void* Buffer; } ;
typedef  TYPE_1__ UNICODE_STRING ;
struct TYPE_15__ {int /*<<< orphan*/  member_0; } ;
typedef  void* PWSTR ;
typedef  TYPE_1__* PUNICODE_STRING ;
typedef  int /*<<< orphan*/  PCWSTR ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  TYPE_3__ LSA_OBJECT_ATTRIBUTES ;
typedef  int /*<<< orphan*/  LSA_HANDLE ;
typedef  int /*<<< orphan*/  LARGE_INTEGER ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  LPTR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__**,int /*<<< orphan*/ *,TYPE_1__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__**) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  POLICY_GET_PRIVATE_INFORMATION ; 
 int /*<<< orphan*/  FUNC8 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SECRET_QUERY_VALUE ; 
 int /*<<< orphan*/  STATUS_UNSUCCESSFUL ; 

NTSTATUS FUNC10(PCWSTR systemName, PCWSTR secretName, PUNICODE_STRING secret, BOOL isSecret)
{
	NTSTATUS status = STATUS_UNSUCCESSFUL;
	LSA_OBJECT_ATTRIBUTES oa = {0};
	LSA_HANDLE hPolicy, hSecret;
	UNICODE_STRING name, system, *cur, *old;
	LARGE_INTEGER curDate, oldDate;

	if(secretName)
	{
		FUNC9(&name, secretName);
		FUNC9(&system, systemName);
		status = FUNC3(&system, &oa, POLICY_GET_PRIVATE_INFORMATION, &hPolicy);
		if(FUNC7(status))
		{
			if(!isSecret)
			{
				status = FUNC6(hPolicy, &name, &cur);
				if(FUNC7(status))
				{
					if(cur)
					{
						*secret = *cur;
						if((secret->Buffer = (PWSTR) FUNC0(LPTR, secret->MaximumLength)))
							FUNC8(secret->Buffer, cur->Buffer, secret->MaximumLength);
						FUNC2(cur);
					}
				}
			}
			else
			{
				status = FUNC4(hPolicy, &name, SECRET_QUERY_VALUE, &hSecret);
				if(FUNC7(status))
				{
					status = FUNC5(hSecret, &cur, &curDate, &old, &oldDate);
					if(FUNC7(status))
					{
						if(cur)
						{
							*secret = *cur;
							if((secret->Buffer = (PWSTR) FUNC0(LPTR, secret->MaximumLength)))
								FUNC8(secret->Buffer, cur->Buffer, secret->MaximumLength);
							FUNC2(cur);
						}
						if(old)
							FUNC2(old);
					}
					FUNC1(hSecret);
				}
			}
			FUNC1(hPolicy);
		}
	}
	return status;
}