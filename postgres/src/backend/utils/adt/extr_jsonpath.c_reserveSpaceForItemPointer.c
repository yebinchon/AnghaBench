
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ptr ;
typedef scalar_t__ int32 ;
struct TYPE_4__ {scalar_t__ len; } ;
typedef TYPE_1__* StringInfo ;


 int appendBinaryStringInfo (TYPE_1__*,char*,int) ;

__attribute__((used)) static int32
reserveSpaceForItemPointer(StringInfo buf)
{
 int32 pos = buf->len;
 int32 ptr = 0;

 appendBinaryStringInfo(buf, (char *) &ptr, sizeof(ptr));

 return pos;
}
