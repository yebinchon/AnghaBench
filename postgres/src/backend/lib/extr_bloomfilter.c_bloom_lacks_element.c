
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_4__ {int k_hash_funcs; int* bitset; } ;
typedef TYPE_1__ bloom_filter ;


 int MAX_HASH_FUNCS ;
 int k_hashes (TYPE_1__*,int*,unsigned char*,size_t) ;

bool
bloom_lacks_element(bloom_filter *filter, unsigned char *elem, size_t len)
{
 uint32 hashes[MAX_HASH_FUNCS];
 int i;

 k_hashes(filter, hashes, elem, len);


 for (i = 0; i < filter->k_hash_funcs; i++)
 {
  if (!(filter->bitset[hashes[i] >> 3] & (1 << (hashes[i] & 7))))
   return 1;
 }

 return 0;
}
