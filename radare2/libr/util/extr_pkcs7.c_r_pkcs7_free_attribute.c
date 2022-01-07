
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int oid; int data; } ;
typedef TYPE_1__ RPKCS7Attribute ;


 int free (TYPE_1__*) ;
 int r_asn1_free_binary (int ) ;
 int r_asn1_free_string (int ) ;

__attribute__((used)) static void r_pkcs7_free_attribute(RPKCS7Attribute *attribute) {
 if (attribute) {
  r_asn1_free_binary (attribute->data);
  r_asn1_free_string (attribute->oid);
  free (attribute);
 }
}
