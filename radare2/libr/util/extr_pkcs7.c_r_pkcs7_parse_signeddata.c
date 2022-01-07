
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef size_t ut32 ;
struct TYPE_12__ {int length; TYPE_3__** objects; } ;
struct TYPE_14__ {scalar_t__ klass; int tag; TYPE_1__ list; scalar_t__* sector; } ;
struct TYPE_13__ {size_t version; int signerinfos; int crls; int certificates; int contentInfo; int digestAlgorithms; } ;
typedef TYPE_2__ RPKCS7SignedData ;
typedef TYPE_3__ RASN1Object ;


 scalar_t__ CLASS_CONTEXT ;
 int memset (TYPE_2__*,int ,int) ;
 int r_pkcs7_parse_certificaterevocationlists (int *,TYPE_3__*) ;
 int r_pkcs7_parse_contentinfo (int *,TYPE_3__*) ;
 int r_pkcs7_parse_digestalgorithmidentifier (int *,TYPE_3__*) ;
 int r_pkcs7_parse_extendedcertificatesandcertificates (int *,TYPE_3__*) ;
 int r_pkcs7_parse_signerinfos (int *,TYPE_3__*) ;

__attribute__((used)) static bool r_pkcs7_parse_signeddata(RPKCS7SignedData *sd, RASN1Object *object) {
 ut32 shift = 3;
 if (!sd || !object || object->list.length < 4) {
  return 0;
 }
 memset (sd, 0, sizeof (RPKCS7SignedData));
 RASN1Object **elems = object->list.objects;

 sd->version = (ut32)elems[0]->sector[0];
 r_pkcs7_parse_digestalgorithmidentifier (&sd->digestAlgorithms, elems[1]);
 r_pkcs7_parse_contentinfo (&sd->contentInfo, elems[2]);

 if (object->list.length > 3 && shift < object->list.length && elems[shift] &&
  elems[shift]->klass == CLASS_CONTEXT && elems[shift]->tag == 0) {
  r_pkcs7_parse_extendedcertificatesandcertificates (&sd->certificates, elems[shift]);
  shift++;
 }

 if (object->list.length > 3 && shift < object->list.length && elems[shift] &&
  elems[shift]->klass == CLASS_CONTEXT && elems[shift]->tag == 1) {
  r_pkcs7_parse_certificaterevocationlists (&sd->crls, elems[shift]);
  shift++;
 }
 if (shift < object->list.length) {
  r_pkcs7_parse_signerinfos (&sd->signerinfos, elems[shift]);
 }
 return 1;
}
