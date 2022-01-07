
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct HashTable {struct HashEntry** Table; } ;
struct HashEntry {int Key; struct HashEntry* Next; int Data; } ;
typedef size_t GLuint ;


 size_t TABLE_SIZE ;
 int assert (struct HashTable const*) ;
 int printf (char*,int,int ) ;

void HashPrint(const struct HashTable *table)
{
   GLuint i;
   assert(table);
   for (i=0;i<TABLE_SIZE;i++) {
      struct HashEntry *entry = table->Table[i];
      while (entry) {
  printf("%u %p\n", entry->Key, entry->Data);
  entry = entry->Next;
      }
   }
}
