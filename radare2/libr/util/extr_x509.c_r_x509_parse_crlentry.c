
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int length; TYPE_1__** objects; } ;
struct TYPE_10__ {TYPE_2__ list; } ;
struct TYPE_9__ {int revocationDate; int userCertificate; } ;
struct TYPE_7__ {int length; int sector; } ;
typedef TYPE_3__ RX509CRLEntry ;
typedef TYPE_4__ RASN1Object ;


 scalar_t__ malloc (int) ;
 int r_asn1_create_binary (int ,int ) ;
 int r_asn1_stringify_utctime (int ,int ) ;

RX509CRLEntry *r_x509_parse_crlentry (RASN1Object *object) {
 RX509CRLEntry *entry;
 if (!object || object->list.length != 2) {
  return ((void*)0);
 }
 entry = (RX509CRLEntry *)malloc (sizeof (RX509CRLEntry));
 if (!entry) {
  return ((void*)0);
 }
 entry->userCertificate = r_asn1_create_binary (object->list.objects[0]->sector, object->list.objects[0]->length);
 entry->revocationDate = r_asn1_stringify_utctime (object->list.objects[1]->sector, object->list.objects[1]->length);
 return entry;
}
