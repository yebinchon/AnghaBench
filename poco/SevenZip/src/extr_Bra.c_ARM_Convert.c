
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UInt32 ;
typedef int SizeT ;
typedef int Byte ;



SizeT ARM_Convert(Byte *data, SizeT size, UInt32 ip, int encoding)
{
  SizeT i;
  if (size < 4)
    return 0;
  size -= 4;
  ip += 8;
  for (i = 0; i <= size; i += 4)
  {
    if (data[i + 3] == 0xEB)
    {
      UInt32 dest;
      UInt32 src = ((UInt32)data[i + 2] << 16) | ((UInt32)data[i + 1] << 8) | (data[i + 0]);
      src <<= 2;
      if (encoding)
        dest = ip + (UInt32)i + src;
      else
        dest = src - (ip + (UInt32)i);
      dest >>= 2;
      data[i + 2] = (Byte)(dest >> 16);
      data[i + 1] = (Byte)(dest >> 8);
      data[i + 0] = (Byte)dest;
    }
  }
  return i;
}
