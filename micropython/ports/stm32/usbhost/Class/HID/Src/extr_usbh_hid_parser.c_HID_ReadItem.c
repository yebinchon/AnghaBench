
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_3__ {int* data; int shift; scalar_t__ count; int size; int logical_min; int logical_max; int resolution; scalar_t__ sign; } ;
typedef TYPE_1__ HID_Report_ItemTypedef ;



uint32_t HID_ReadItem(HID_Report_ItemTypedef *ri, uint8_t ndx)
{
  uint32_t val=0;
  uint32_t x=0;
  uint32_t bofs;
  uint8_t *data=ri->data;
  uint8_t shift=ri->shift;




  if (ri->count > 0)
  {

    if (ri->count <= ndx)
    {
      return(0);
    }


    bofs = ndx*ri->size;
    bofs += shift;

    data+=bofs/8;
    shift=(uint8_t)(bofs%8);
  }

  for(x=0; x < ((ri->size & 0x7) ? (ri->size/8)+1 : (ri->size/8)); x++)
  {
    val=(uint32_t)(*data << (x*8));
  }
  val=(val >> shift) & ((1<<ri->size)-1);

  if (val < ri->logical_min || val > ri->logical_max)
  {
    return(0);
  }



  if ((ri->sign) && (val & (1<<(ri->size-1))))
  {

    int vs=(int)((-1 & ~((1<<(ri->size))-1)) | val);

    if(ri->resolution == 1)
    {
      return((uint32_t)vs);
    }
    return((uint32_t)(vs*ri->resolution));
  }
  else
  {
    if(ri->resolution == 1)
    {
      return(val);
    }
    return(val*ri->resolution);
  }
}
