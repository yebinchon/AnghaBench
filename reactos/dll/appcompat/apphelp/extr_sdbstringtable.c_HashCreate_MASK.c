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
struct SdbStringHashTable {int Size; void* Entries; } ;

/* Variables and functions */
 int DEFAULT_TABLE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 void* FUNC1 (int) ; 

__attribute__((used)) static struct SdbStringHashTable* FUNC2(void)
{
    struct SdbStringHashTable* tab = FUNC1(sizeof(*tab));
    if (!tab)
    {
        FUNC0("Failed to allocate 8 bytes.\r\n");
        return tab;
    }
    tab->Size = DEFAULT_TABLE_SIZE;
    tab->Entries = FUNC1(tab->Size * sizeof(*tab->Entries));
    return tab;
}