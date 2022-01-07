
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int time_t ;
typedef int timeBuf ;
typedef TYPE_1__* XMLRPC_VALUE ;
struct TYPE_4__ {int i; int type; } ;


 int XMLRPC_SetValueDateTime_ISO8601 (TYPE_1__*,char*) ;
 int date_to_ISO8601 (int ,char*,int) ;
 int xmlrpc_datetime ;

void XMLRPC_SetValueDateTime(XMLRPC_VALUE value, time_t time) {
   if(value) {
      char timeBuf[30];
      value->type = xmlrpc_datetime;
      value->i = time;

      timeBuf[0] = 0;

      date_to_ISO8601(time, timeBuf, sizeof(timeBuf));

      if(timeBuf[0]) {
         XMLRPC_SetValueDateTime_ISO8601 (value, timeBuf);
      }
   }
}
