
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int zval ;
typedef TYPE_1__* sdlSoapBindingFunctionHeaderPtr ;
struct TYPE_5__ {struct TYPE_5__* headerfaults; struct TYPE_5__* ns; struct TYPE_5__* name; } ;


 TYPE_1__* Z_PTR_P (int *) ;
 int free (TYPE_1__*) ;
 int zend_hash_destroy (TYPE_1__*) ;

__attribute__((used)) static void delete_header_persistent(zval *zv)
{
 sdlSoapBindingFunctionHeaderPtr hdr = Z_PTR_P(zv);
 if (hdr->name) {
  free(hdr->name);
 }
 if (hdr->ns) {
  free(hdr->ns);
 }
 if (hdr->headerfaults) {
  zend_hash_destroy(hdr->headerfaults);
  free(hdr->headerfaults);
 }
 free(hdr);
}
