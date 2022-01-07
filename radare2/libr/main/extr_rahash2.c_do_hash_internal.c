
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut64 ;
typedef int RHash ;


 int _s ;
 int do_hash_print (int *,int ,int,int,int) ;
 scalar_t__ iterations ;
 int r_hash_calculate (int *,int ,int const*,int) ;
 int r_hash_do_spice (int *,int ,scalar_t__,int ) ;

__attribute__((used)) static int do_hash_internal(RHash *ctx, ut64 hash, const ut8 *buf, int len, int rad, int print, int le) {
 if (len < 0) {
  return 0;
 }
 int dlen = r_hash_calculate (ctx, hash, buf, len);
 if (!print) {
  return 1;
 }
 if (iterations > 0) {
  r_hash_do_spice (ctx, hash, iterations, _s);
 }
 do_hash_print (ctx, hash, dlen, rad, le);
 return 1;
}
