
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char cursor; } ;
typedef TYPE_1__* StringInfo ;


 int initStringInfo (TYPE_1__*) ;

void
pq_beginmessage(StringInfo buf, char msgtype)
{
 initStringInfo(buf);






 buf->cursor = msgtype;
}
