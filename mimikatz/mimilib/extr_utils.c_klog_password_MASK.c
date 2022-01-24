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
struct TYPE_5__ {int /*<<< orphan*/  Length; scalar_t__ Buffer; } ;
typedef  TYPE_1__* PUNICODE_STRING ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int IS_TEXT_UNICODE_ODD_LENGTH ; 
 int IS_TEXT_UNICODE_STATISTICS ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 

void FUNC3(FILE * logfile, PUNICODE_STRING pPassword)
{
	int i = IS_TEXT_UNICODE_ODD_LENGTH | IS_TEXT_UNICODE_STATISTICS;
	if(pPassword->Buffer)
	{
		if(FUNC0(pPassword->Buffer, pPassword->Length, &i))
			FUNC1(logfile, L"%wZ", pPassword);
		else FUNC2(logfile, pPassword, TRUE);
			//for(i = 0; i < pPassword->Length; i++)
			//	klog(logfile, L"%02x ", ((LPCBYTE) pPassword->Buffer)[i]);
	}
}