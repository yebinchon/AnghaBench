
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned short code; int peer; } ;
typedef TYPE_1__ codes_t ;



__attribute__((used)) static unsigned short BinarySearchRange
   (const codes_t *array, int high, unsigned short code)
{
 int low,
    mid,
    distance,
    tmp;

 low = 0;
 mid = high >> 1;

 for (; low <= high; mid = (low + high) >> 1)
 {
  if ((array[mid].code <= code) && (array[mid + 1].code > code))
  {
   if (0 == array[mid].peer)
    return 0;
   if (code >= 0xa140U)
   {

    tmp = ((code & 0xff00) - (array[mid].code & 0xff00)) >> 8;
    high = code & 0x00ff;
    low = array[mid].code & 0x00ff;
    distance = tmp * 0x9d + high - low +
     (high >= 0xa1 ? (low >= 0xa1 ? 0 : -0x22)
      : (low >= 0xa1 ? +0x22 : 0));
    tmp = (array[mid].peer & 0x00ff) + distance - 0x21;
    tmp = (array[mid].peer & 0xff00) + ((tmp / 0x5e) << 8)
     + 0x21 + tmp % 0x5e;
    return tmp;
   }
   else
   {

    tmp = ((code & 0xff00) - (array[mid].code & 0xff00)) >> 8;





    distance = tmp * 0x5e
     + ((int) (code & 0x00ff) - (int) (array[mid].code & 0x00ff));





    low = array[mid].peer & 0x00ff;
    tmp = low + distance - (low >= 0xa1 ? 0x62 : 0x40);
    low = tmp % 0x9d;
    tmp = (array[mid].peer & 0xff00) + ((tmp / 0x9d) << 8)
     + (low > 0x3e ? 0x62 : 0x40) + low;
    return tmp;
   }
  }
  else if (array[mid].code > code)
   high = mid - 1;
  else
   low = mid + 1;
 }

 return 0;
}
