
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct HashTable {struct HashTable* Next; struct HashTable** Table; } ;
struct HashEntry {struct HashEntry* Next; struct HashEntry** Table; } ;
typedef size_t GLuint ;


 size_t TABLE_SIZE ;
 int assert (struct HashTable*) ;
 int free (struct HashTable*) ;

void DeleteHashTable(struct HashTable *table)
{
   GLuint i;
   assert(table);
   for (i=0;i<TABLE_SIZE;i++) {
      struct HashEntry *entry = table->Table[i];
      while (entry) {
  struct HashEntry *next = entry->Next;
  free(entry);
  entry = next;
      }
   }
   free(table);
}
