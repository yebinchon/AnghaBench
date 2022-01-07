
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_3__ {int* data; int shift; int physical_min; int physical_max; scalar_t__ count; int size; int resolution; } ;
typedef TYPE_1__ HID_Report_ItemTypedef ;



uint32_t HID_WriteItem(HID_Report_ItemTypedef *ri, uint32_t value, uint8_t ndx)
{
  uint32_t x;
  uint32_t mask;
  uint32_t bofs;
  uint8_t *data=ri->data;
  uint8_t shift=ri->shift;

  if (value < ri->physical_min || value > ri->physical_max)
  {
    return(1);
  }


  if (ri->count > 0)
  {

    if (ri->count >= ndx)
    {
      return(0);
    }

    bofs = ndx*ri->size;
    bofs += shift;

    data+=bofs/8;
    shift=(uint8_t)(bofs%8);

  }


  if (ri->resolution != 1)
  {
    value=value/ri->resolution;
  }


  mask=(uint32_t)((1<<ri->size)-1);
  value = (value & mask) << shift;

  for(x=0; x < ((ri->size & 0x7) ? (ri->size/8)+1 : (ri->size/8)); x++)
  {
    *(ri->data+x)=(uint8_t)((*(ri->data+x) & ~(mask>>(x*8))) | ((value>>(x*8)) & (mask>>(x*8))));
  }
  return(0);
}
