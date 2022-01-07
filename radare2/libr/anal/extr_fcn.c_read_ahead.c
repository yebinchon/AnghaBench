
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut8 ;
typedef scalar_t__ ut64 ;
typedef int cache ;
struct TYPE_4__ {int (* read_at ) (int ,scalar_t__,int *,int) ;int io; } ;
struct TYPE_5__ {TYPE_1__ iob; } ;
typedef TYPE_2__ RAnal ;


 scalar_t__ UT64_ADD_OVFCHK (scalar_t__,int const) ;
 scalar_t__ UT64_MAX ;
 scalar_t__ cache_addr ;
 int memcpy (int *,int *,int const) ;
 int stub1 (int ,scalar_t__,int *,int) ;
 int stub2 (int ,scalar_t__,int *,int) ;

__attribute__((used)) static int read_ahead(RAnal *anal, ut64 addr, ut8 *buf, int len) {
 static ut8 cache[1024];
 const int cache_len = sizeof (cache);

 if (len < 1) {
  return 0;
 }
 if (len > cache_len) {
  int a = anal->iob.read_at (anal->iob.io, addr, buf, len);
  memcpy (cache, buf, cache_len);
  cache_addr = addr;
  return a;
 }

 ut64 addr_end = UT64_ADD_OVFCHK (addr, len)? UT64_MAX: addr + len;
 ut64 cache_addr_end = UT64_ADD_OVFCHK (cache_addr, cache_len)? UT64_MAX: cache_addr + cache_len;
 bool isCached = ((addr != UT64_MAX) && (addr >= cache_addr) && (addr_end < cache_addr_end));
 if (isCached) {
  memcpy (buf, cache + (addr - cache_addr), len);
 } else {
  anal->iob.read_at (anal->iob.io, addr, cache, sizeof (cache));
  memcpy (buf, cache, len);
  cache_addr = addr;
 }
 return len;
}
