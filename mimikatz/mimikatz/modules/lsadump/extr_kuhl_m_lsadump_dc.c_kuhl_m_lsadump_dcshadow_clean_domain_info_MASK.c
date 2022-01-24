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
struct TYPE_3__ {scalar_t__ request; scalar_t__ ld; scalar_t__ hGetNCChangeCalled; scalar_t__ szDsServiceName; scalar_t__ szConfigurationNamingContext; scalar_t__ szDCDsServiceName; scalar_t__ szDomainNamingContext; scalar_t__ szDomainName; } ;
typedef  TYPE_1__* PDCSHADOW_DOMAIN_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

void FUNC4(PDCSHADOW_DOMAIN_INFO info)
{
	if(info->szDomainName)
		FUNC1(info->szDomainName);
	if(info->szDomainNamingContext)
		FUNC1(info->szDomainNamingContext);
	if(info->szDCDsServiceName)
		FUNC1(info->szDCDsServiceName);
	if(info->szConfigurationNamingContext)
		FUNC1(info->szConfigurationNamingContext);
	if(info->szDsServiceName)
		FUNC1(info->szDsServiceName);
	if(info->hGetNCChangeCalled)
		FUNC0(info->hGetNCChangeCalled);
	if(info->ld)
		FUNC3(info->ld);
	if(info->request)
		FUNC2(info->request);
}