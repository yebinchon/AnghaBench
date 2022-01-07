
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zend_resource ;
struct TYPE_6__ {scalar_t__ refcount; TYPE_1__* stream; int * res; } ;
typedef TYPE_2__ php_istream ;
struct TYPE_5__ {int * res; } ;
typedef int IUnknown ;


 int CoDisconnectObject (int *,int ) ;
 int CoTaskMemFree (TYPE_2__*) ;
 int zend_list_delete (int *) ;

__attribute__((used)) static void istream_destructor(php_istream *stm)
{
 if (stm->res) {
  zend_resource *res = stm->res;
  stm->res = ((void*)0);
  zend_list_delete(res);
  return;
 }

 if (stm->refcount > 0) {
  CoDisconnectObject((IUnknown*)stm, 0);
 }

 zend_list_delete(stm->stream->res);

 CoTaskMemFree(stm);
}
