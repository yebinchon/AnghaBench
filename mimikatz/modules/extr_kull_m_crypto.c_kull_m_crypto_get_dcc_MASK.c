#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int Length; int MaximumLength; int /*<<< orphan*/ * Buffer; } ;
typedef  int /*<<< orphan*/ * PWSTR ;
typedef  int /*<<< orphan*/  PUNICODE_STRING ;
typedef  int PBYTE ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  TYPE_1__ LSA_UNICODE_STRING ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  CALG_SHA1 ; 
 int /*<<< orphan*/  FALSE ; 
 int LM_NTLM_HASH_LENGTH ; 
 int /*<<< orphan*/  LPTR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

NTSTATUS FUNC8(PBYTE dcc, PBYTE ntlm, PUNICODE_STRING Username, DWORD realIterations)
{
	NTSTATUS status;
	LSA_UNICODE_STRING HashAndLowerUsername;
	LSA_UNICODE_STRING LowerUsername;
	BYTE buffer[LM_NTLM_HASH_LENGTH];

	status = FUNC5(&LowerUsername, Username, TRUE);
	if(FUNC2(status))
	{
		HashAndLowerUsername.Length = HashAndLowerUsername.MaximumLength = LowerUsername.Length + LM_NTLM_HASH_LENGTH;
		if((HashAndLowerUsername.Buffer = (PWSTR) FUNC0(LPTR, HashAndLowerUsername.MaximumLength)))
		{
			FUNC3(*HashAndLowerUsername.Buffer, ntlm, LM_NTLM_HASH_LENGTH);
			FUNC3((PBYTE) HashAndLowerUsername.Buffer + LM_NTLM_HASH_LENGTH, *LowerUsername.Buffer, LowerUsername.Length);
			status = FUNC4(&HashAndLowerUsername, dcc);
			if(realIterations && FUNC2(status))
			{
				if(FUNC7(CALG_SHA1, dcc, LM_NTLM_HASH_LENGTH, LowerUsername.Buffer, LowerUsername.Length, realIterations, buffer, LM_NTLM_HASH_LENGTH, FALSE))
				{
					FUNC3(dcc, buffer, LM_NTLM_HASH_LENGTH);
					status = STATUS_SUCCESS;
				}
			}
			FUNC1(HashAndLowerUsername.Buffer);
		}
		FUNC6(&LowerUsername);
	}
	return status;
}