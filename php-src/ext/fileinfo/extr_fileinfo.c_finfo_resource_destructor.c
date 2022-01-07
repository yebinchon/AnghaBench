
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * ptr; } ;
typedef TYPE_1__ zend_resource ;
struct TYPE_5__ {int magic; } ;
typedef TYPE_2__ php_fileinfo ;


 int efree (int *) ;
 int magic_close (int ) ;

void finfo_resource_destructor(zend_resource *rsrc)
{
 if (rsrc->ptr) {
  php_fileinfo *finfo = (php_fileinfo *) rsrc->ptr;
  magic_close(finfo->magic);
  efree(rsrc->ptr);
  rsrc->ptr = ((void*)0);
 }
}
