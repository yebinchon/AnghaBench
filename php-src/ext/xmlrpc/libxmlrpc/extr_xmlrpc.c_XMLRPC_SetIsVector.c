
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int queue ;
typedef void* XMLRPC_VECTOR_TYPE ;
typedef TYPE_1__* XMLRPC_VALUE ;
struct TYPE_5__ {void* type; int * q; } ;
struct TYPE_4__ {scalar_t__ type; TYPE_2__* v; } ;
typedef int STRUCT_XMLRPC_VECTOR ;


 int Q_Init (int *) ;
 int Q_Size (int *) ;
 TYPE_2__* ecalloc (int,int) ;
 scalar_t__ emalloc (int) ;
 scalar_t__ xmlrpc_vector ;

int XMLRPC_SetIsVector(XMLRPC_VALUE value, XMLRPC_VECTOR_TYPE type) {
   int bSuccess = 0;

 if (value) {

  if(value->type == xmlrpc_vector) {
   if(value->v) {
    if(!Q_Size(value->v->q)) {
     value->v->type = type;
    }
   }
  }
  else {
      value->v = ecalloc(1, sizeof(STRUCT_XMLRPC_VECTOR));
      if(value->v) {
         value->v->q = (queue*)emalloc(sizeof(queue));
         if(value->v->q) {
            Q_Init(value->v->q);
            value->v->type = type;
            value->type = xmlrpc_vector;
            bSuccess = 1;
         }
      }
   }
 }

   return bSuccess;
}
