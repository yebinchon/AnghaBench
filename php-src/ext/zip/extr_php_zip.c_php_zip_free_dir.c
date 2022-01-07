
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * za; } ;
typedef TYPE_1__ zip_rsrc ;
struct TYPE_5__ {int * ptr; } ;
typedef TYPE_2__ zend_resource ;


 int E_WARNING ;
 int efree (int *) ;
 int php_error_docref (int *,int ,char*) ;
 scalar_t__ zip_close (int *) ;

__attribute__((used)) static void php_zip_free_dir(zend_resource *rsrc)
{
 zip_rsrc * zip_int = (zip_rsrc *) rsrc->ptr;

 if (zip_int) {
  if (zip_int->za) {
   if (zip_close(zip_int->za) != 0) {
    php_error_docref(((void*)0), E_WARNING, "Cannot destroy the zip context");
   }
   zip_int->za = ((void*)0);
  }

  efree(rsrc->ptr);

  rsrc->ptr = ((void*)0);
 }
}
