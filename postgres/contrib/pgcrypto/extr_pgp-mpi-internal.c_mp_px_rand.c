
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int uint32 ;
typedef int mpz_t ;


 int PXE_NO_RANDOM ;
 int mp_int_read_unsigned (int *,int*,unsigned int) ;
 int pg_strong_random (int*,unsigned int) ;
 int* px_alloc (unsigned int) ;
 int px_free (int*) ;

__attribute__((used)) static int
mp_px_rand(uint32 bits, mpz_t *res)
{
 unsigned bytes = (bits + 7) / 8;
 int last_bits = bits & 7;
 uint8 *buf;

 buf = px_alloc(bytes);
 if (!pg_strong_random(buf, bytes))
 {
  px_free(buf);
  return PXE_NO_RANDOM;
 }


 if (last_bits)
 {
  buf[0] >>= 8 - last_bits;
  buf[0] |= 1 << (last_bits - 1);
 }
 else
  buf[0] |= 1 << 7;

 mp_int_read_unsigned(res, buf, bytes);

 px_free(buf);

 return 0;
}
