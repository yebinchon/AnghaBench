
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* data; size_t cursor; int len; } ;
typedef TYPE_1__* StringInfo ;


 int ERRCODE_PROTOCOL_VIOLATION ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int strlen (char*) ;

const char *
pq_getmsgrawstring(StringInfo msg)
{
 char *str;
 int slen;

 str = &msg->data[msg->cursor];






 slen = strlen(str);
 if (msg->cursor + slen >= msg->len)
  ereport(ERROR,
    (errcode(ERRCODE_PROTOCOL_VIOLATION),
     errmsg("invalid string in message")));
 msg->cursor += slen + 1;

 return str;
}
