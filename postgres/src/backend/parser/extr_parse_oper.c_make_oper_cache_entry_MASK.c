#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  opr_oid; } ;
typedef  int /*<<< orphan*/  OprCacheKey ;
typedef  TYPE_1__ OprCacheEntry ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HASH_ENTER ; 
 int /*<<< orphan*/ * OprCacheHash ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(OprCacheKey *key, Oid opr_oid)
{
	OprCacheEntry *oprentry;

	FUNC0(OprCacheHash != NULL);

	oprentry = (OprCacheEntry *) FUNC1(OprCacheHash,
											 (void *) key,
											 HASH_ENTER, NULL);
	oprentry->opr_oid = opr_oid;
}