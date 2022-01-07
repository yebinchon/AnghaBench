
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_bucket {int dummy; } ;


 int dfree (struct hash_bucket*,char*) ;

void
free_hash_bucket(struct hash_bucket *ptr, char *name)
{
 dfree(ptr, name);
}
