
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ refcount; int object; int name_to_dispid; int dispid_to_name; int * res; } ;
typedef TYPE_2__ php_dispatchex ;
struct TYPE_8__ {TYPE_1__* name; } ;
struct TYPE_6__ {int val; } ;
typedef int IUnknown ;


 scalar_t__ COMG (int ) ;
 int CoDisconnectObject (int *,int ) ;
 int CoTaskMemFree (TYPE_2__*) ;
 int FREE_HASHTABLE (int ) ;
 int Z_OBJ (int ) ;
 TYPE_4__* Z_OBJCE (int ) ;
 int rshutdown_started ;
 int trace (char*,int ,...) ;
 int zend_hash_destroy (int ) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static void disp_destructor(php_dispatchex *disp)
{

 if (COMG(rshutdown_started)) {
  trace("destroying COM wrapper for PHP object %p (name:unknown)\n", Z_OBJ(disp->object));
 } else {
  trace("destroying COM wrapper for PHP object %p (name:%s)\n", Z_OBJ(disp->object), Z_OBJCE(disp->object)->name->val);
 }

 disp->res = ((void*)0);

 if (disp->refcount > 0)
  CoDisconnectObject((IUnknown*)disp, 0);

 zend_hash_destroy(disp->dispid_to_name);
 zend_hash_destroy(disp->name_to_dispid);
 FREE_HASHTABLE(disp->dispid_to_name);
 FREE_HASHTABLE(disp->name_to_dispid);

 zval_ptr_dtor(&disp->object);

 CoTaskMemFree(disp);
}
