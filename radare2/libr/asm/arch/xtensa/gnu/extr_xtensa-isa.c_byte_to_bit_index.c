
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int
byte_to_bit_index (int byte_index)
{
  return (byte_index & 0x3) * 8;
}
