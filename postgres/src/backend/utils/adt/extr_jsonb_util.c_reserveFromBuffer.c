
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int len; char* data; } ;
typedef TYPE_1__* StringInfo ;


 int enlargeStringInfo (TYPE_1__*,int) ;

__attribute__((used)) static int
reserveFromBuffer(StringInfo buffer, int len)
{
 int offset;


 enlargeStringInfo(buffer, len);


 offset = buffer->len;


 buffer->len += len;





 buffer->data[buffer->len] = '\0';

 return offset;
}
