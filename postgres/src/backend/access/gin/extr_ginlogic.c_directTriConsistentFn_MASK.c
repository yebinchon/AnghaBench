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
struct TYPE_3__ {int /*<<< orphan*/  queryCategories; int /*<<< orphan*/  queryValues; int /*<<< orphan*/  extra_data; int /*<<< orphan*/  nuserentries; int /*<<< orphan*/  query; int /*<<< orphan*/  strategy; int /*<<< orphan*/  entryRes; int /*<<< orphan*/  collation; int /*<<< orphan*/  triConsistentFmgrInfo; } ;
typedef  int /*<<< orphan*/  GinTernaryValue ;
typedef  TYPE_1__* GinScanKey ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static GinTernaryValue
FUNC5(GinScanKey key)
{
	return FUNC0(FUNC1(
													 key->triConsistentFmgrInfo,
													 key->collation,
													 FUNC2(key->entryRes),
													 FUNC3(key->strategy),
													 key->query,
													 FUNC4(key->nuserentries),
													 FUNC2(key->extra_data),
													 FUNC2(key->queryValues),
													 FUNC2(key->queryCategories)));
}