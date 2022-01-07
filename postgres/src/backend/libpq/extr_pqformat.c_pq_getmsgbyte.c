
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ cursor; scalar_t__ len; scalar_t__* data; } ;
typedef TYPE_1__* StringInfo ;


 int ERRCODE_PROTOCOL_VIOLATION ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;

int
pq_getmsgbyte(StringInfo msg)
{
 if (msg->cursor >= msg->len)
  ereport(ERROR,
    (errcode(ERRCODE_PROTOCOL_VIOLATION),
     errmsg("no data left in message")));
 return (unsigned char) msg->data[msg->cursor++];
}
