#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int ulClaimsCount; TYPE_3__* ClaimEntries; int /*<<< orphan*/  usClaimsSourceType; } ;
struct TYPE_10__ {int ulClaimsArrayCount; TYPE_5__* ClaimsArrays; } ;
struct TYPE_7__ {int ValueCount; void** StringValues; } ;
struct TYPE_8__ {TYPE_1__ cs; } ;
struct TYPE_9__ {TYPE_2__ Values; void* Id; int /*<<< orphan*/  Type; } ;
typedef  int /*<<< orphan*/ * PWCHAR ;
typedef  TYPE_3__* PCLAIM_ENTRY ;
typedef  TYPE_4__* PCLAIMS_SET ;
typedef  TYPE_5__* PCLAIMS_ARRAY ;
typedef  void* LPWSTR ;
typedef  int /*<<< orphan*/ * LPCWCHAR ;
typedef  size_t DWORD ;
typedef  int /*<<< orphan*/  CLAIM_ENTRY ;
typedef  int /*<<< orphan*/  CLAIMS_SET ;
typedef  int /*<<< orphan*/  CLAIMS_ARRAY ;

/* Variables and functions */
 int /*<<< orphan*/  CLAIMS_SOURCE_TYPE_AD ; 
 int /*<<< orphan*/  CLAIM_TYPE_STRING ; 
 int /*<<< orphan*/  LPTR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **) ; 

PCLAIMS_SET FUNC4(LPCWCHAR string)
{
	PCLAIMS_SET set = NULL;
	PWCHAR dupClaims, dupSet, dupEnt, nextSetToken, SetToken, nextArrayToken, ArrayToken, nextKeyToken, KeyToken, nextValueToken, ValueToken;
	DWORD curArr, curEnt, curVal;

	if((set = (PCLAIMS_SET) FUNC0(LPTR, sizeof(CLAIMS_SET))))
	{
		if((dupClaims = FUNC1(string)))
		{
			for(nextSetToken = NULL, SetToken = FUNC3(dupClaims, L";", &nextSetToken); SetToken; SetToken = FUNC3(NULL, L";", &nextSetToken))
				set->ulClaimsArrayCount++;
			FUNC2(dupClaims);
		}
		if((set->ClaimsArrays = (PCLAIMS_ARRAY) FUNC0(LPTR, sizeof(CLAIMS_ARRAY) * set->ulClaimsArrayCount))) //
		{
			if((dupClaims = FUNC1(string)))
			{
				for(nextSetToken = NULL, curArr = 0, SetToken = FUNC3(dupClaims, L";", &nextSetToken); SetToken; curArr++, SetToken = FUNC3(NULL, L";", &nextSetToken))
				{
					set->ClaimsArrays[curArr].usClaimsSourceType = CLAIMS_SOURCE_TYPE_AD;
					if((dupSet = FUNC1(SetToken)))
					{
						for(nextArrayToken = NULL, ArrayToken = FUNC3(dupSet, L",", &nextArrayToken); ArrayToken; ArrayToken = FUNC3(NULL, L",", &nextArrayToken))
							set->ClaimsArrays[curArr].ulClaimsCount++;
						FUNC2(dupSet);
					}
					if((set->ClaimsArrays[curArr].ClaimEntries = (PCLAIM_ENTRY) FUNC0(LPTR, sizeof(CLAIM_ENTRY) * set->ClaimsArrays[curArr].ulClaimsCount))) //
					{
						for(nextArrayToken = NULL, curEnt = 0, ArrayToken = FUNC3(SetToken, L",", &nextArrayToken); ArrayToken; curEnt++, ArrayToken = FUNC3(NULL, L",", &nextArrayToken))
						{
							set->ClaimsArrays[curArr].ClaimEntries[curEnt].Type = CLAIM_TYPE_STRING;
							nextKeyToken = NULL;
							if((KeyToken = FUNC3(ArrayToken, L"=", &nextKeyToken)))
							{
								if((set->ClaimsArrays[curArr].ClaimEntries[curEnt].Id = FUNC1(KeyToken))) //
								{
									if((KeyToken = FUNC3(NULL, L"=", &nextKeyToken)))
									{
										if((dupEnt = FUNC1(KeyToken)))
										{
											for(nextValueToken = NULL, ValueToken = FUNC3(dupEnt, L"|", &nextValueToken); ValueToken; ValueToken = FUNC3(NULL, L"|", &nextValueToken))
												set->ClaimsArrays[curArr].ClaimEntries[curEnt].Values.cs.ValueCount++;
											FUNC2(dupEnt);
										}
										if((set->ClaimsArrays[curArr].ClaimEntries[curEnt].Values.cs.StringValues = (LPWSTR *) FUNC0(LPTR, sizeof(LPWSTR) * set->ClaimsArrays[curArr].ClaimEntries[curEnt].Values.cs.ValueCount))) //
											for(nextValueToken = NULL, curVal = 0, ValueToken = FUNC3(KeyToken, L"|", &nextValueToken); ValueToken; curVal++, ValueToken = FUNC3(NULL, L"|", &nextValueToken))
												set->ClaimsArrays[curArr].ClaimEntries[curEnt].Values.cs.StringValues[curVal] = FUNC1(ValueToken); //
									}
								}
							}
						}
					}
				}
				FUNC2(dupClaims);
			}
		}
	}
	return set;
}