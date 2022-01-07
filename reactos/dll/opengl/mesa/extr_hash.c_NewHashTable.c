
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct HashTable {int dummy; } ;


 scalar_t__ calloc (int,int) ;

struct HashTable *NewHashTable(void)
{
   return (struct HashTable *) calloc(sizeof (struct HashTable), 1);
}
