
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64 ;
typedef scalar_t__ uint32 ;
struct TYPE_3__ {int m; int k_hash_funcs; int seed; } ;
typedef TYPE_1__ bloom_filter ;


 int DatumGetUInt64 (int ) ;
 int hash_any_extended (unsigned char*,size_t,int ) ;
 scalar_t__ mod_m (scalar_t__,int) ;

__attribute__((used)) static void
k_hashes(bloom_filter *filter, uint32 *hashes, unsigned char *elem, size_t len)
{
 uint64 hash;
 uint32 x,
    y;
 uint64 m;
 int i;


 hash = DatumGetUInt64(hash_any_extended(elem, len, filter->seed));
 x = (uint32) hash;
 y = (uint32) (hash >> 32);
 m = filter->m;

 x = mod_m(x, m);
 y = mod_m(y, m);


 hashes[0] = x;
 for (i = 1; i < filter->k_hash_funcs; i++)
 {
  x = mod_m(x + y, m);
  y = mod_m(y + i, m);

  hashes[i] = x;
 }
}
