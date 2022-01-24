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
struct GenericTable {int numEntries; int /*<<< orphan*/ * entries; } ;
typedef  int /*<<< orphan*/  (* oidToKeyFunc ) (int /*<<< orphan*/ *,void*) ;
typedef  scalar_t__ (* compareFunc ) (void*,int /*<<< orphan*/ *) ;
typedef  int UINT ;
typedef  int /*<<< orphan*/  AsnObjectIdentifier ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int FUNC3 (void*,struct GenericTable*,size_t,scalar_t__ (*) (void*,int /*<<< orphan*/ *)) ; 

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
        if (index == 0)
        {
            /* Not found in table.  If it's less than the first entry, return
             * the first index.  Otherwise just return 0 and let the caller
             * handle finding the successor.
             */
            if (compare(key, table->entries) < 0)
                index = 1;
        }
        else
        {
            /* Skip any entries that match the same key.  This enumeration will
             * be incomplete, but it's what Windows appears to do if there are
             * multiple entries with the same index in a table, and it avoids
             * an infinite loop.
             */
            for (++index; index <= table->numEntries && compare(key,
                &table->entries[tableEntrySize * (index - 1)]) == 0; ++index)
                ;
        }
        FUNC2(FUNC0(), 0, key);
    }
    return index;
}