
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint32 ;
typedef int pg_int64 ;


 void* pg_hton32 (void*) ;

__attribute__((used)) static pg_int64
lo_hton64(pg_int64 host64)
{
 union
 {
  pg_int64 i64;
  uint32 i32[2];
 } swap;
 uint32 t;


 t = (uint32) (host64 >> 32);
 swap.i32[0] = pg_hton32(t);


 t = (uint32) host64;
 swap.i32[1] = pg_hton32(t);

 return swap.i64;
}
