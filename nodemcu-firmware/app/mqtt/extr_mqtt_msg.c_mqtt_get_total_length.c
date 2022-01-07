
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int int32_t ;



int32_t mqtt_get_total_length(uint8_t* buffer, uint16_t buffer_length)
{
  int i;
  int totlen = 0;

  if(buffer_length == 1)
    return -1;

  for(i = 1; i < buffer_length; ++i)
  {
    totlen += (buffer[i] & 0x7f) << (7 * (i - 1));
    if((buffer[i] & 0x80) == 0)
    {
      ++i;
      break;
    }

    if(i == buffer_length)
      return -1;
  }

  totlen += i;

  return totlen;
}
