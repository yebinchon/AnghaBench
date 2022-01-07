
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* sdlSoapBindingFunctionHeaderPtr ;
struct TYPE_5__ {struct TYPE_5__* headerfaults; struct TYPE_5__* ns; struct TYPE_5__* name; } ;


 int efree (TYPE_1__*) ;
 int zend_hash_destroy (TYPE_1__*) ;

__attribute__((used)) static void delete_header_int(sdlSoapBindingFunctionHeaderPtr hdr)
{
 if (hdr->name) {
  efree(hdr->name);
 }
 if (hdr->ns) {
  efree(hdr->ns);
 }
 if (hdr->headerfaults) {
  zend_hash_destroy(hdr->headerfaults);
  efree(hdr->headerfaults);
 }
 efree(hdr);
}
