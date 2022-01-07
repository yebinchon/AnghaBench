
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int XMLRPC_VALUE_TYPE_EASY ;
typedef TYPE_2__* XMLRPC_VALUE ;
struct TYPE_5__ {int type; TYPE_1__* v; } ;
struct TYPE_4__ {int type; } ;


 int xmlrpc_type_array ;
 int xmlrpc_type_mixed ;
 int xmlrpc_type_none ;
 int xmlrpc_type_struct ;






XMLRPC_VALUE_TYPE_EASY XMLRPC_GetValueTypeEasy (XMLRPC_VALUE value) {
 if (value) {
  switch (value->type) {
  case 132:
   switch (value->v->type) {
   case 129:
    return xmlrpc_type_none;
   case 128:
    return xmlrpc_type_struct;
   case 130:
    return xmlrpc_type_mixed;
   case 131:
    return xmlrpc_type_array;
   }
  default:

   return(XMLRPC_VALUE_TYPE_EASY) value->type;
  }
 }
 return xmlrpc_type_none;
}
