
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int XMLRPC_VALUE ;


 int PHP_to_XMLRPC_worker (int *,int *,int ) ;

__attribute__((used)) static XMLRPC_VALUE PHP_to_XMLRPC(zval* root_val)
{
 return PHP_to_XMLRPC_worker(((void*)0), root_val, 0);
}
