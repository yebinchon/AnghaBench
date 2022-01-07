
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int ROTL32 (int,int) ;
 int fmix32 (int) ;
 int getblock32 (int const*,int) ;

uint32_t MurmurHash3_x86_32 ( const void * key, size_t length)
{
  const uint8_t * data = (const uint8_t*)key;
  const int nblocks = length / 4;

  uint32_t h1 = 0;

  uint32_t c1 = 0xcc9e2d51;
  uint32_t c2 = 0x1b873593;




  const uint32_t * blocks = (const uint32_t *)(data + nblocks*4);

  for(int i = -nblocks; i; i++)
  {
    uint32_t k1 = getblock32(blocks,i);

    k1 *= c1;
    k1 = ROTL32(k1,15);
    k1 *= c2;

    h1 ^= k1;
    h1 = ROTL32(h1,13);
    h1 = h1*5+0xe6546b64;
  }




  const uint8_t * tail = (const uint8_t*)(data + nblocks*4);

  uint32_t k1 = 0;

  switch(length & 3)
  {
  case 3: k1 ^= tail[2] << 16;
  case 2: k1 ^= tail[1] << 8;
  case 1: k1 ^= tail[0];
          k1 *= c1; k1 = ROTL32(k1,15); k1 *= c2; h1 ^= k1;
  };




  h1 ^= length;

  h1 = fmix32(h1);


  return h1;
}
