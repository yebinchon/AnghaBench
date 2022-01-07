
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t ut32 ;
struct TYPE_9__ {int length; TYPE_3__** objects; } ;
struct TYPE_11__ {scalar_t__ klass; scalar_t__ tag; TYPE_1__ list; int length; scalar_t__* sector; } ;
struct TYPE_10__ {size_t version; int unauthenticatedAttributes; int encryptedDigest; int digestEncryptionAlgorithm; int authenticatedAttributes; int digestAlgorithm; int issuerAndSerialNumber; } ;
typedef TYPE_2__ RPKCS7SignerInfo ;
typedef TYPE_3__ RASN1Object ;


 scalar_t__ CLASS_CONTEXT ;
 int r_asn1_create_binary (scalar_t__*,int ) ;
 int r_pkcs7_parse_attributes (int *,TYPE_3__*) ;
 int r_pkcs7_parse_issuerandserialnumber (int *,TYPE_3__*) ;
 int r_x509_parse_algorithmidentifier (int *,TYPE_3__*) ;

__attribute__((used)) static bool r_pkcs7_parse_signerinfo(RPKCS7SignerInfo *si, RASN1Object *object) {
 RASN1Object **elems;
 ut32 shift = 3;
 if (!si || !object || object->list.length < 5) {
  return 0;
 }
 elems = object->list.objects;

 si->version = (ut32)elems[0]->sector[0];
 r_pkcs7_parse_issuerandserialnumber (&si->issuerAndSerialNumber, elems[1]);
 r_x509_parse_algorithmidentifier (&si->digestAlgorithm, elems[2]);
 if (shift < object->list.length && elems[shift]->klass == CLASS_CONTEXT && elems[shift]->tag == 0) {
  r_pkcs7_parse_attributes (&si->authenticatedAttributes, elems[shift]);
  shift++;
 }
 if (shift < object->list.length) {
  r_x509_parse_algorithmidentifier (&si->digestEncryptionAlgorithm, elems[shift]);
  shift++;
 }
 if (shift < object->list.length) {
  RASN1Object *obj1 = object->list.objects[shift];
  if (obj1) {
   si->encryptedDigest = r_asn1_create_binary (obj1->sector, obj1->length);
   shift++;
  }
 }
 if (shift < object->list.length) {
  RASN1Object *elem = elems[shift];
  if (elem && elem->klass == CLASS_CONTEXT && elem->tag == 1) {
   r_pkcs7_parse_attributes (&si->unauthenticatedAttributes, elems[shift]);
  }
 }
 return 1;
}
