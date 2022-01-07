
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uchar ;
struct TYPE_2__ {int* bitrevNibble; } ;


 int DBG_COUNT (int) ;
 TYPE_1__* dynamicTables ;
 int outBits (int,int) ;

void outBitsRev(uchar bits, int nBits) {
  DBG_COUNT(4);

  uchar bitsRev = (dynamicTables->bitrevNibble[bits & 0x0f]<<4) |
                  dynamicTables->bitrevNibble[bits>>4];
  outBits(bitsRev, nBits);
}
