
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct HashTable {TYPE_1__** Table; } ;
struct TYPE_2__ {size_t Key; } ;
typedef size_t GLuint ;


 size_t TABLE_SIZE ;
 int assert (struct HashTable const*) ;

GLuint HashFirstEntry(const struct HashTable *table)
{
   GLuint pos;
   assert(table);
   for (pos=0; pos < TABLE_SIZE; pos++) {
      if (table->Table[pos])
         return table->Table[pos]->Key;
   }
   return 0;
}
