
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GET_BIT (unsigned int,int) ;
 int sign_extend (unsigned int,int) ;

__attribute__((used)) static int
extract_16 (unsigned word)
{
  int m15, m0, m1;

  m0 = GET_BIT (word, 16);
  m1 = GET_BIT (word, 17);
  m15 = GET_BIT (word, 31);
  word = (word >> 1) & 0x1fff;
  word = word | (m15 << 15) | ((m15 ^ m0) << 14) | ((m15 ^ m1) << 13);
  return sign_extend (word, 16);
}
