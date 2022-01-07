
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UInt32 ;
struct TYPE_4__ {scalar_t__ count; int * buffer; } ;
typedef TYPE_1__ CSha256 ;
typedef int Byte ;


 int Sha256_WriteByteBlock (TYPE_1__*) ;

void Sha256_Update(CSha256 *p, const Byte *data, size_t size)
{
  UInt32 curBufferPos = (UInt32)p->count & 0x3F;
  while (size > 0)
  {
    p->buffer[curBufferPos++] = *data++;
    p->count++;
    size--;
    if (curBufferPos == 64)
    {
      curBufferPos = 0;
      Sha256_WriteByteBlock(p);
    }
  }
}
