
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 size_t MRB_DUMP_ALIGNMENT ;
 int memset (int *,int ,size_t) ;

__attribute__((used)) static size_t
write_padding(uint8_t *buf)
{
  const size_t align = MRB_DUMP_ALIGNMENT;
  size_t pad_len = -(intptr_t)buf & (align-1);
  if (pad_len > 0) {
    memset(buf, 0, pad_len);
  }
  return pad_len;
}
