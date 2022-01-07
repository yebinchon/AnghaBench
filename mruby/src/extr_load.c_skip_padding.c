
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 size_t MRB_DUMP_ALIGNMENT ;

__attribute__((used)) static size_t
skip_padding(const uint8_t *buf)
{
  const size_t align = MRB_DUMP_ALIGNMENT;
  return -(intptr_t)buf & (align-1);
}
