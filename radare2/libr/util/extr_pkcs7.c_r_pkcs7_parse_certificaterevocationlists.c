
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t ut32 ;
struct TYPE_6__ {scalar_t__ length; int * objects; } ;
struct TYPE_8__ {TYPE_1__ list; } ;
struct TYPE_7__ {size_t length; int ** elements; } ;
typedef int RX509CertificateRevocationList ;
typedef TYPE_2__ RPKCS7CertificateRevocationLists ;
typedef TYPE_3__ RASN1Object ;


 scalar_t__ calloc (size_t,int) ;
 int * r_x509_parse_crl (int ) ;

__attribute__((used)) static bool r_pkcs7_parse_certificaterevocationlists(RPKCS7CertificateRevocationLists *crls, RASN1Object *object) {
 ut32 i;
 if (!crls || !object) {
  return 0;
 }
 if (object->list.length > 0) {
  crls->elements = (RX509CertificateRevocationList **)calloc (object->list.length, sizeof (RX509CertificateRevocationList *));
  if (!crls->elements) {
   return 0;
  }
  crls->length = object->list.length;
  for (i = 0; i < crls->length; ++i) {
   crls->elements[i] = r_x509_parse_crl (object->list.objects[i]);
  }
 }
 return 1;
}
