
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uchar ;
struct TYPE_2__ {scalar_t__ compDisabled; } ;


 int DBG_COUNT (int) ;
 int DBG_PRINT (char*,int,int) ;
 TYPE_1__* oBuf ;
 int outBits (int,int) ;
 int outBitsRev (int,int) ;

void literal (uchar c) {
  DBG_COUNT(6);
  DBG_PRINT("sym: %02x   %c\n", c, c);
  if (oBuf->compDisabled) {

    outBits(c, 8);
  } else if (c <= 143) {

    outBitsRev(0x30 + c, 8);
  } else {

    outBits(1, 1);
    outBitsRev(0x90 - 144 + c, 8);
  }
}
