
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ ptr; } ;
typedef TYPE_1__ zend_resource ;
typedef int xmlrpc_server_data ;


 int GC_ADDREF (TYPE_1__*) ;
 int GC_DELREF (TYPE_1__*) ;
 int destroy_server_data (int *) ;

__attribute__((used)) static void xmlrpc_server_destructor(zend_resource *rsrc)
{
 if (rsrc && rsrc->ptr) {
  GC_ADDREF(rsrc);
  destroy_server_data((xmlrpc_server_data*) rsrc->ptr);
  GC_DELREF(rsrc);
 }
}
