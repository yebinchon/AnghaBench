
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct HashTable {scalar_t__ MaxKey; } ;
typedef scalar_t__ GLuint ;


 scalar_t__ HashLookup (struct HashTable const*,scalar_t__) ;

GLuint HashFindFreeKeyBlock(const struct HashTable *table, GLuint numKeys)
{
   GLuint maxKey = ~((GLuint) 0);
   if (maxKey - numKeys > table->MaxKey) {

      return table->MaxKey + 1;
   }
   else {

      GLuint freeCount = 0;
      GLuint freeStart = 0;
      GLuint key;
      for (key=0; key!=maxKey; key++) {
  if (HashLookup(table, key)) {

     freeCount = 0;
     freeStart = key+1;
  }
  else {

     freeCount++;
     if (freeCount == numKeys) {
        return freeStart;
     }
  }
      }

      return 0;
   }
}
