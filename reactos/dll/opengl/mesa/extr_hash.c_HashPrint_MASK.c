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
struct HashTable {struct HashEntry** Table; } ;
struct HashEntry {int Key; struct HashEntry* Next; int /*<<< orphan*/  Data; } ;
typedef  size_t GLuint ;

/* Variables and functions */
 size_t TABLE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct HashTable const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 

void FUNC2(const struct HashTable *table)
{
   GLuint i;
   FUNC0(table);
   for (i=0;i<TABLE_SIZE;i++) {
      struct HashEntry *entry = table->Table[i];
      while (entry) {
	 FUNC1("%u %p\n", entry->Key, entry->Data);
	 entry = entry->Next;
      }
   }
}