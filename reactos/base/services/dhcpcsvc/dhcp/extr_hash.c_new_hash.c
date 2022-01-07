
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_table {int * buckets; } ;
struct hash_bucket {int dummy; } ;


 int DEFAULT_HASH_SIZE ;
 int memset (int *,int ,int) ;
 struct hash_table* new_hash_table (int) ;

struct hash_table *new_hash ()
{
 struct hash_table *rv = new_hash_table (DEFAULT_HASH_SIZE);
 if (!rv)
  return rv;
 memset (&rv -> buckets [0], 0,
  DEFAULT_HASH_SIZE * sizeof (struct hash_bucket *));
 return rv;
}
