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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 scalar_t__ isBase64InterceptInput ; 
 scalar_t__ isBase64InterceptOutput ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ **,char*,scalar_t__*) ; 

NTSTATUS FUNC2(int argc, wchar_t * argv[])
{
	if(!FUNC1(argc, argv, L"in", &isBase64InterceptInput))
		FUNC1(argc, argv, L"input", &isBase64InterceptInput);

	if(!FUNC1(argc, argv, L"out", &isBase64InterceptOutput))
		FUNC1(argc, argv, L"output", &isBase64InterceptOutput);

	FUNC0(L"isBase64InterceptInput  is %s\nisBase64InterceptOutput is %s\n", isBase64InterceptInput ? L"true" : L"false", isBase64InterceptOutput ? L"true" : L"false");
	return STATUS_SUCCESS;
}