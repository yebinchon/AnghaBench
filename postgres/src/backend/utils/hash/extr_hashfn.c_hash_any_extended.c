
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;
typedef int uint32 ;
typedef int Datum ;


 int PG_RETURN_UINT64 (int) ;
 uintptr_t UINT32_ALIGN_MASK ;
 int final (int,int,int) ;
 int mix (int,int,int) ;

Datum
hash_any_extended(const unsigned char *k, int keylen,
      uint64 seed)
{
 uint32 a,
    b,
    c,
    len;


 len = keylen;
 a = b = c = 0x9e3779b9 + len + 3923095;


 if (seed != 0)
 {





  a += (uint32) (seed >> 32);
  b += (uint32) seed;
  mix(a, b, c);
 }


 if (((uintptr_t) k & UINT32_ALIGN_MASK) == 0)
 {

  const uint32 *ka = (const uint32 *) k;


  while (len >= 12)
  {
   a += ka[0];
   b += ka[1];
   c += ka[2];
   mix(a, b, c);
   ka += 3;
   len -= 12;
  }


  k = (const unsigned char *) ka;
  switch (len)
  {
   case 11:
    c += ((uint32) k[10] << 24);

   case 10:
    c += ((uint32) k[9] << 16);

   case 9:
    c += ((uint32) k[8] << 8);

   case 8:

    b += ka[1];
    a += ka[0];
    break;
   case 7:
    b += ((uint32) k[6] << 16);

   case 6:
    b += ((uint32) k[5] << 8);

   case 5:
    b += k[4];

   case 4:
    a += ka[0];
    break;
   case 3:
    a += ((uint32) k[2] << 16);

   case 2:
    a += ((uint32) k[1] << 8);

   case 1:
    a += k[0];

  }

 }
 else
 {



  while (len >= 12)
  {





   a += (k[0] + ((uint32) k[1] << 8) + ((uint32) k[2] << 16) + ((uint32) k[3] << 24));
   b += (k[4] + ((uint32) k[5] << 8) + ((uint32) k[6] << 16) + ((uint32) k[7] << 24));
   c += (k[8] + ((uint32) k[9] << 8) + ((uint32) k[10] << 16) + ((uint32) k[11] << 24));

   mix(a, b, c);
   k += 12;
   len -= 12;
  }
  switch (len)
  {
   case 11:
    c += ((uint32) k[10] << 24);

   case 10:
    c += ((uint32) k[9] << 16);

   case 9:
    c += ((uint32) k[8] << 8);

   case 8:

    b += ((uint32) k[7] << 24);

   case 7:
    b += ((uint32) k[6] << 16);

   case 6:
    b += ((uint32) k[5] << 8);

   case 5:
    b += k[4];

   case 4:
    a += ((uint32) k[3] << 24);

   case 3:
    a += ((uint32) k[2] << 16);

   case 2:
    a += ((uint32) k[1] << 8);

   case 1:
    a += k[0];

  }

 }

 final(a, b, c);


 PG_RETURN_UINT64(((uint64) b << 32) | c);
}
