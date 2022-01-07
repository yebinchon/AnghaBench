
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int XMLRPC_VALUE_TYPE ;
typedef TYPE_1__* XMLRPC_VALUE ;
struct TYPE_3__ {int type; } ;


 int xmlrpc_empty ;

XMLRPC_VALUE_TYPE XMLRPC_GetValueType(XMLRPC_VALUE value) {
   return value ? value->type : xmlrpc_empty;
}
