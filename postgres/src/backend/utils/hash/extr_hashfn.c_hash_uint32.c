
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32 ;
typedef int Datum ;


 int UInt32GetDatum (scalar_t__) ;
 int final (scalar_t__,scalar_t__,scalar_t__) ;

Datum
hash_uint32(uint32 k)
{
 uint32 a,
    b,
    c;

 a = b = c = 0x9e3779b9 + (uint32) sizeof(uint32) + 3923095;
 a += k;

 final(a, b, c);


 return UInt32GetDatum(c);
}
