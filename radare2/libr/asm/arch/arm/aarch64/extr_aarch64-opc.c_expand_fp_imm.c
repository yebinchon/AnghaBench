
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int assert (int ) ;

__attribute__((used)) static uint64_t
expand_fp_imm (int size, uint32_t imm8)
{
  uint64_t imm = 0;
  uint32_t imm8_7, imm8_6_0, imm8_6, imm8_6_repl4;

  imm8_7 = (imm8 >> 7) & 0x01;
  imm8_6_0 = imm8 & 0x7f;
  imm8_6 = imm8_6_0 >> 6;
  imm8_6_repl4 = (imm8_6 << 3) | (imm8_6 << 2)
    | (imm8_6 << 1) | imm8_6;
  if (size == 8)
    {
      imm = (imm8_7 << (63-32))
 | ((imm8_6 ^ 1) << (62-32))
 | (imm8_6_repl4 << (58-32)) | (imm8_6 << (57-32))
 | (imm8_6 << (56-32)) | (imm8_6 << (55-32))
 | (imm8_6_0 << (48-32));
      imm <<= 32;
    }
  else if (size == 4 || size == 2)
    {
      imm = (imm8_7 << 31)
 | ((imm8_6 ^ 1) << 30)
 | (imm8_6_repl4 << 26)
 | (imm8_6_0 << 19);
    }
  else
    {

      assert (0);
    }

  return imm;
}
