
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int XMLRPC_VECTOR_TYPE ;
typedef TYPE_2__* XMLRPC_VALUE ;
struct TYPE_5__ {TYPE_1__* v; } ;
struct TYPE_4__ {int type; } ;


 int xmlrpc_vector_none ;

XMLRPC_VECTOR_TYPE XMLRPC_GetVectorType(XMLRPC_VALUE value) {
   return(value && value->v) ? value->v->type : xmlrpc_vector_none;
}
