
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UInt32 ;
typedef int SizeT ;
typedef int Byte ;



SizeT PPC_Convert(Byte *data, SizeT size, UInt32 ip, int encoding)
{
  SizeT i;
  if (size < 4)
    return 0;
  size -= 4;
  for (i = 0; i <= size; i += 4)
  {
    if ((data[i] >> 2) == 0x12 && (data[i + 3] & 3) == 1)
    {
      UInt32 src = ((UInt32)(data[i + 0] & 3) << 24) |
        ((UInt32)data[i + 1] << 16) |
        ((UInt32)data[i + 2] << 8) |
        ((UInt32)data[i + 3] & (~3));

      UInt32 dest;
      if (encoding)
        dest = ip + (UInt32)i + src;
      else
        dest = src - (ip + (UInt32)i);
      data[i + 0] = (Byte)(0x48 | ((dest >> 24) & 0x3));
      data[i + 1] = (Byte)(dest >> 16);
      data[i + 2] = (Byte)(dest >> 8);
      data[i + 3] &= 0x3;
      data[i + 3] |= dest;
    }
  }
  return i;
}
