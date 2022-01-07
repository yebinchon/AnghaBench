
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * zf; } ;
typedef TYPE_1__ zip_read_rsrc ;
struct TYPE_6__ {int * ptr; } ;
typedef TYPE_2__ zend_resource ;


 int efree (TYPE_1__*) ;
 int zip_fclose (int *) ;

__attribute__((used)) static void php_zip_free_entry(zend_resource *rsrc)
{
 zip_read_rsrc *zr_rsrc = (zip_read_rsrc *) rsrc->ptr;

 if (zr_rsrc) {
  if (zr_rsrc->zf) {
   zip_fclose(zr_rsrc->zf);
   zr_rsrc->zf = ((void*)0);
  }
  efree(zr_rsrc);
  rsrc->ptr = ((void*)0);
 }
}
