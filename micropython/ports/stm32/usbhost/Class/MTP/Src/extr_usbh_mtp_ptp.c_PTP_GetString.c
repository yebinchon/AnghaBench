
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;



__attribute__((used)) static void PTP_GetString (uint8_t *str, uint8_t* data, uint16_t *len)
{
  uint16_t strlength;
  uint16_t idx;

  *len = data[0];
  strlength = 2 * data[0];
  data ++;

  for (idx = 0; idx < strlength; idx+=2 )
  {

    *str = data[idx];
    str++;
  }
  *str = 0;
}
