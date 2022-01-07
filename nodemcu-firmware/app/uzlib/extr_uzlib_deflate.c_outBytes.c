
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uchar ;
struct TYPE_2__ {int len; int size; int * buffer; scalar_t__ bits; scalar_t__ nBits; } ;


 int DBG_COUNT (int) ;
 int DBG_PRINT (char*,int ) ;
 TYPE_1__* oBuf ;
 int resizeBuffer () ;

void outBytes(void *bytes, int nBytes) {
  DBG_COUNT(5);
  int i;
  if (oBuf->len >= oBuf->size - nBytes)
    resizeBuffer();



  oBuf->nBits = oBuf->bits = 0;
  for (i = 0; i < nBytes; i++) {
    DBG_PRINT("%02x-", *((uchar*)bytes+i));
    oBuf->buffer[oBuf->len++] = *((uchar*)bytes+i);
  }
}
