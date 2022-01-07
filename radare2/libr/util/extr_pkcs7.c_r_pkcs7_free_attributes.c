
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t ut32 ;
struct TYPE_3__ {size_t length; int * elements; } ;
typedef TYPE_1__ RPKCS7Attributes ;


 int R_FREE (int *) ;
 int r_pkcs7_free_attribute (int ) ;

__attribute__((used)) static void r_pkcs7_free_attributes(RPKCS7Attributes *attributes) {
 ut32 i;
 if (attributes) {
  for (i = 0; i < attributes->length; ++i) {
   r_pkcs7_free_attribute (attributes->elements[i]);
  }
  R_FREE (attributes->elements);

 }
}
