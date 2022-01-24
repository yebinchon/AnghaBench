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
struct TYPE_4__ {int /*<<< orphan*/  AttributeCount; scalar_t__ Attributes; struct TYPE_4__* CredentialBlob; struct TYPE_4__* UserName; struct TYPE_4__* TargetAlias; struct TYPE_4__* Comment; struct TYPE_4__* UnkData; struct TYPE_4__* TargetName; } ;
typedef  TYPE_1__* PKULL_M_CRED_BLOB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC2(PKULL_M_CRED_BLOB cred)
{
	if(cred)
	{
		if(cred->TargetName)
			FUNC0(cred->TargetName);
		if(cred->UnkData)
			FUNC0(cred->UnkData);
		if(cred->Comment)
			FUNC0(cred->Comment);
		if(cred->TargetAlias)
			FUNC0(cred->TargetAlias);
		if(cred->UserName)
			FUNC0(cred->UserName);
		if(cred->CredentialBlob)
			FUNC0(cred->CredentialBlob);
		if(cred->Attributes)
			FUNC1(cred->Attributes, cred->AttributeCount);
		FUNC0(cred);
	}
}