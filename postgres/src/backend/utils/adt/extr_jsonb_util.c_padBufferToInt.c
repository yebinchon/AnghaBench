
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int len; char* data; } ;
typedef TYPE_1__* StringInfo ;


 int INTALIGN (int) ;
 int reserveFromBuffer (TYPE_1__*,int) ;

__attribute__((used)) static short
padBufferToInt(StringInfo buffer)
{
 int padlen,
    p,
    offset;

 padlen = INTALIGN(buffer->len) - buffer->len;

 offset = reserveFromBuffer(buffer, padlen);


 for (p = 0; p < padlen; p++)
  buffer->data[offset + p] = '\0';

 return padlen;
}
