
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UInt64 ;
typedef int Byte ;



unsigned Xz_ReadVarInt(const Byte *p, size_t maxSize, UInt64 *value)
{
  int i, limit;
  *value = 0;
  limit = (maxSize > 9) ? 9 : (int)maxSize;

  for (i = 0; i < limit;)
  {
    Byte b = p[i];
    *value |= (UInt64)(b & 0x7F) << (7 * i++);
    if ((b & 0x80) == 0)
      return (b == 0 && i != 1) ? 0 : i;
  }
  return 0;
}
