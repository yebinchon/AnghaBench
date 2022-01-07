
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dshash_hash ;


 int tag_hash (void const*,size_t) ;

dshash_hash
dshash_memhash(const void *v, size_t size, void *arg)
{
 return tag_hash(v, size);
}
