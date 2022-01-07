
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t ut32 ;
struct TYPE_6__ {scalar_t__ length; int ** objects; } ;
struct TYPE_8__ {TYPE_1__ list; } ;
struct TYPE_7__ {size_t length; int ** elements; } ;
typedef int RX509Certificate ;
typedef TYPE_2__ RPKCS7ExtendedCertificatesAndCertificates ;
typedef TYPE_3__ RASN1Object ;


 scalar_t__ calloc (scalar_t__,int) ;
 int * r_x509_parse_certificate (int *) ;

__attribute__((used)) static bool r_pkcs7_parse_extendedcertificatesandcertificates(RPKCS7ExtendedCertificatesAndCertificates *ecac, RASN1Object *object) {
 ut32 i;
 if (!ecac || !object) {
  return 0;
 }
 if (object->list.length > 0) {
  ecac->elements = (RX509Certificate **)calloc (object->list.length, sizeof (RX509Certificate *));
  if (!ecac->elements) {
   return 0;
  }
  ecac->length = object->list.length;
  for (i = 0; i < ecac->length; ++i) {
   ecac->elements[i] = r_x509_parse_certificate (object->list.objects[i]);
   object->list.objects[i] = ((void*)0);
  }
 }
 return 1;
}
