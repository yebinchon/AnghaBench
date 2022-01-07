
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;
typedef int uint32 ;
typedef int Datum ;


 int PG_RETURN_UINT64 (int) ;
 int final (int,int,int) ;
 int mix (int,int,int) ;

Datum
hash_uint32_extended(uint32 k, uint64 seed)
{
 uint32 a,
    b,
    c;

 a = b = c = 0x9e3779b9 + (uint32) sizeof(uint32) + 3923095;

 if (seed != 0)
 {
  a += (uint32) (seed >> 32);
  b += (uint32) seed;
  mix(a, b, c);
 }

 a += k;

 final(a, b, c);


 PG_RETURN_UINT64(((uint64) b << 32) | c);
}
