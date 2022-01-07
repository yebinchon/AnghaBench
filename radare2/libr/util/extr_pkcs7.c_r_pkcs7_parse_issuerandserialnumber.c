
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int length; TYPE_3__** objects; } ;
struct TYPE_9__ {int length; int sector; TYPE_1__ list; } ;
struct TYPE_8__ {int serialNumber; int issuer; } ;
typedef TYPE_2__ RPKCS7IssuerAndSerialNumber ;
typedef TYPE_3__ RASN1Object ;


 int r_asn1_create_binary (int ,int ) ;
 int r_x509_parse_name (int *,TYPE_3__*) ;

__attribute__((used)) static bool r_pkcs7_parse_issuerandserialnumber(RPKCS7IssuerAndSerialNumber *iasu, RASN1Object *object) {
 if (!iasu || !object || object->list.length != 2) {
  return 0;
 }
 r_x509_parse_name (&iasu->issuer, object->list.objects[0]);
 RASN1Object *obj1 = object->list.objects[1];
 if (obj1) {
  iasu->serialNumber = r_asn1_create_binary (obj1->sector, obj1->length);
 }
 return 1;
}
