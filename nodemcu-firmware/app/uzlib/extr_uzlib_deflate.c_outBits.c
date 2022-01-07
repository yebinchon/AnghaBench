
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ushort ;
typedef int bits ;
struct TYPE_2__ {int bits; int nBits; int len; int size; int* buffer; } ;


 int DBG_COUNT (int) ;
 int DBG_PRINT (char*,int) ;
 TYPE_1__* oBuf ;
 int resizeBuffer () ;

void outBits(ushort bits, int nBits) {
  DBG_COUNT(3);
  oBuf->bits |= bits << oBuf->nBits;
  oBuf->nBits += nBits;

  if (oBuf->len >= oBuf->size - sizeof(bits))
    resizeBuffer();

  while (oBuf->nBits >= 8) {
    DBG_PRINT("%02x-", oBuf->bits & 0xFF);
    oBuf->buffer[oBuf->len++] = oBuf->bits & 0xFF;
    oBuf->bits >>= 8;
    oBuf->nBits -= 8;
  }
}
