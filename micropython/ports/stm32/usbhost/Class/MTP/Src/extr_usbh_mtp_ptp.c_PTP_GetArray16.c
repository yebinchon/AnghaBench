
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef size_t uint32_t ;
typedef int uint16_t ;


 int LE16 (int *) ;
 size_t LE32 (int *) ;

__attribute__((used)) static uint32_t PTP_GetArray16 (uint16_t *array, uint8_t *data, uint32_t offset)
{
  uint32_t size, idx = 0;

  size=LE32(&data[offset]);
  while (size > idx)
  {
    array[idx] = LE16(&data[offset+(sizeof(uint16_t)*(idx+2))]);
    idx++;
  }
  return size;
}
