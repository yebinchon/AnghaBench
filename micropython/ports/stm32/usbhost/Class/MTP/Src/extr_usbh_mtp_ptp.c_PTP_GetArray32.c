
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef size_t uint32_t ;


 size_t LE32 (int *) ;

__attribute__((used)) static uint32_t PTP_GetArray32 (uint32_t *array, uint8_t *data, uint32_t offset)
{
  uint32_t size, idx = 0;

  size=LE32(&data[offset]);
  while (size > idx)
  {
    array[idx] = LE32(&data[offset+(sizeof(uint32_t)*(idx+1))]);
    idx++;
  }
  return size;
}
