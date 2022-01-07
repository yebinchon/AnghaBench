
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zval ;
struct TYPE_6__ {int refcount; int res; int object; int * lpVtbl; int engine_thread; } ;
typedef TYPE_1__ php_dispatchex ;
struct TYPE_7__ {int name; } ;


 scalar_t__ CoTaskMemAlloc (int) ;
 int GetCurrentThreadId () ;
 int ZVAL_COPY (int *,int *) ;
 int ZVAL_UNDEF (int *) ;
 TYPE_5__* Z_OBJCE_P (int *) ;
 int Z_RES_P (int *) ;
 int le_dispatch ;
 int memset (TYPE_1__*,int ,int) ;
 int php_dispatch_vtbl ;
 int trace (char*,int *,int ) ;
 int * zend_list_insert (TYPE_1__*,int ) ;

__attribute__((used)) static php_dispatchex *disp_constructor(zval *object)
{
 php_dispatchex *disp = (php_dispatchex*)CoTaskMemAlloc(sizeof(php_dispatchex));
 zval *tmp;

 trace("constructing a COM wrapper for PHP object %p (%s)\n", object, Z_OBJCE_P(object)->name);

 if (disp == ((void*)0))
  return ((void*)0);

 memset(disp, 0, sizeof(php_dispatchex));

 disp->engine_thread = GetCurrentThreadId();
 disp->lpVtbl = &php_dispatch_vtbl;
 disp->refcount = 1;


 if (object) {
  ZVAL_COPY(&disp->object, object);
 } else {
  ZVAL_UNDEF(&disp->object);
 }

 tmp = zend_list_insert(disp, le_dispatch);
 disp->res = Z_RES_P(tmp);

 return disp;
}
