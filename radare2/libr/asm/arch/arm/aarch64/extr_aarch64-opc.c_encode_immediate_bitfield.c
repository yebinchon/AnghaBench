
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static inline int
encode_immediate_bitfield (int is64, uint32_t s, uint32_t r)
{
  return (is64 << 12) | (r << 6) | s;
}
