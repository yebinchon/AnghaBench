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
struct TYPE_3__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ SID_IDENTIFIER_AUTHORITY ;
typedef  int /*<<< orphan*/  PSID ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  SECURITY_LOCAL_SYSTEM_RID ; 
 int /*<<< orphan*/  SECURITY_NT_AUTHORITY ; 
 int /*<<< orphan*/  SECURITY_SERVICE_RID ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC5(void)
{
	static int	_is_service = -1;
	BOOL		IsMember;
	PSID		ServiceSid;
	PSID		LocalSystemSid;
	SID_IDENTIFIER_AUTHORITY NtAuthority = {SECURITY_NT_AUTHORITY};

	/* Only check the first time */
	if (_is_service != -1)
		return _is_service;

	/* First check for LocalSystem */
	if (!FUNC0(&NtAuthority, 1,
								  SECURITY_LOCAL_SYSTEM_RID, 0, 0, 0, 0, 0, 0, 0,
								  &LocalSystemSid))
	{
		FUNC4(stderr, "could not get SID for local system account\n");
		return -1;
	}

	if (!FUNC1(NULL, LocalSystemSid, &IsMember))
	{
		FUNC4(stderr, "could not check access token membership: error code %d\n",
				FUNC3());
		FUNC2(LocalSystemSid);
		return -1;
	}
	FUNC2(LocalSystemSid);

	if (IsMember)
	{
		_is_service = 1;
		return _is_service;
	}

	/* Check for service group membership */
	if (!FUNC0(&NtAuthority, 1,
								  SECURITY_SERVICE_RID, 0, 0, 0, 0, 0, 0, 0,
								  &ServiceSid))
	{
		FUNC4(stderr, "could not get SID for service group: error code %d\n",
				FUNC3());
		return -1;
	}

	if (!FUNC1(NULL, ServiceSid, &IsMember))
	{
		FUNC4(stderr, "could not check access token membership: error code %d\n",
				FUNC3());
		FUNC2(ServiceSid);
		return -1;
	}
	FUNC2(ServiceSid);

	if (IsMember)
		_is_service = 1;
	else
		_is_service = 0;

	return _is_service;
}