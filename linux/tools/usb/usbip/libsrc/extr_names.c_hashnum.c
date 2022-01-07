
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HASH1 ;
 int HASH2 ;
 int HASHSZ ;

__attribute__((used)) static unsigned int hashnum(unsigned int num)
{
 unsigned int mask1 = HASH1 << 27, mask2 = HASH2 << 27;

 for (; mask1 >= HASH1; mask1 >>= 1, mask2 >>= 1)
  if (num & mask1)
   num ^= mask2;
 return num & (HASHSZ-1);
}
