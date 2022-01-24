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
struct TYPE_3__ {int /*<<< orphan*/  ClaimsSet; int /*<<< orphan*/  ulUncompressedClaimsSetSize; int /*<<< orphan*/  ulClaimsSetSize; int /*<<< orphan*/ * member_6; int /*<<< orphan*/  member_5; int /*<<< orphan*/  member_4; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/ * member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/ * PVOID ;
typedef  int /*<<< orphan*/  PCLAIMS_SET ;
typedef  scalar_t__ DWORD ;
typedef  TYPE_1__ CLAIMS_SET_METADATA ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CLAIMS_COMPRESSION_FORMAT_NONE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**,int /*<<< orphan*/ **,scalar_t__*) ; 

BOOL FUNC3(PCLAIMS_SET claimsSet, PVOID *encoded, DWORD *dwEncoded)
{
	BOOL status = FALSE;
	CLAIMS_SET_METADATA metadata = {0, NULL, CLAIMS_COMPRESSION_FORMAT_NONE, 0, 0, 0, NULL}, *pMetadata = &metadata;
	*encoded = NULL;
	*dwEncoded = 0;
	if(FUNC1(&claimsSet, (PVOID *) &metadata.ClaimsSet, &metadata.ulUncompressedClaimsSetSize))
	{
		metadata.ulClaimsSetSize = metadata.ulUncompressedClaimsSetSize;
		status = FUNC2(&pMetadata, encoded, dwEncoded);
		FUNC0(metadata.ClaimsSet);
	}
	return status;
}