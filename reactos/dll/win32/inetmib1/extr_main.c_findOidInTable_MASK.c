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
struct GenericTable {int dummy; } ;
typedef  int /*<<< orphan*/  (* oidToKeyFunc ) (int /*<<< orphan*/ *,void*) ;
typedef  int /*<<< orphan*/  compareFunc ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  AsnObjectIdentifier ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (void*,struct GenericTable*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static UINT FUNC4(AsnObjectIdentifier *oid,
    struct GenericTable *table, size_t tableEntrySize, oidToKeyFunc makeKey,
    compareFunc compare)
{
    UINT index = 0;
    void *key = FUNC1(FUNC0(), 0, tableEntrySize);

    if (key)
    {
        makeKey(oid, key);
        index = FUNC3(key, table, tableEntrySize, compare);
        FUNC2(FUNC0(), 0, key);
    }
    return index;
}