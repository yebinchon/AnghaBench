
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
struct TYPE_4__ {int php_executed; int return_data; int php_function; int caller_params; int xmlrpc_method; TYPE_1__* server; } ;
typedef TYPE_2__ xmlrpc_callback_data ;
typedef int XMLRPC_VALUE ;
typedef int XMLRPC_SERVER ;
typedef int XMLRPC_REQUEST ;
struct TYPE_3__ {int method_map; } ;


 int PHP_to_XMLRPC (int *) ;
 int XMLRPC_RequestGetData (int ) ;
 int XMLRPC_RequestGetMethodName (int ) ;
 int XMLRPC_to_PHP (int ,int *) ;
 int ZVAL_COPY_VALUE (int *,int *) ;
 int ZVAL_STRING (int *,int ) ;
 int Z_ARRVAL (int ) ;
 int Z_STR (int ) ;
 int call_user_function (int *,int *,int *,int *,int,int *) ;
 int * zend_hash_find (int ,int ) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static XMLRPC_VALUE php_xmlrpc_callback(XMLRPC_SERVER server, XMLRPC_REQUEST xRequest, void* data)
{
 xmlrpc_callback_data* pData = (xmlrpc_callback_data*)data;
 zval* php_function;
 zval xmlrpc_params;
 zval callback_params[3];

 zval_ptr_dtor(&pData->xmlrpc_method);
 zval_ptr_dtor(&pData->return_data);


 ZVAL_STRING(&pData->xmlrpc_method, XMLRPC_RequestGetMethodName(xRequest));
 XMLRPC_to_PHP(XMLRPC_RequestGetData(xRequest), &xmlrpc_params);


 if ((php_function = zend_hash_find(Z_ARRVAL(pData->server->method_map), Z_STR(pData->xmlrpc_method))) != ((void*)0)) {
  ZVAL_COPY_VALUE(&pData->php_function, php_function);
 }


 ZVAL_COPY_VALUE(&callback_params[0], &pData->xmlrpc_method);
 ZVAL_COPY_VALUE(&callback_params[1], &xmlrpc_params);
 ZVAL_COPY_VALUE(&callback_params[2], &pData->caller_params);




 call_user_function(((void*)0), ((void*)0), &pData->php_function, &pData->return_data, 3, callback_params);

 pData->php_executed = 1;

 zval_ptr_dtor(&xmlrpc_params);

 return PHP_to_XMLRPC(&pData->return_data);
}
