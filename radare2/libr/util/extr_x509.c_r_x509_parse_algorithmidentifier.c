
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
struct TYPE_9__ {int * parameters; int algorithm; } ;
struct TYPE_7__ {scalar_t__ klass; scalar_t__ tag; int length; int sector; } ;
typedef TYPE_3__ RX509AlgorithmIdentifier ;
typedef TYPE_4__ RASN1Object ;


 scalar_t__ CLASS_UNIVERSAL ;
 scalar_t__ TAG_OID ;
 int r_asn1_stringify_oid (int ,int ) ;

bool r_x509_parse_algorithmidentifier (RX509AlgorithmIdentifier *ai, RASN1Object *object) {
 if (!ai || !object || object->list.length < 1 || !object->list.objects) {
  return 0;
 }
 if (object->list.objects[0] && object->list.objects[0]->klass == CLASS_UNIVERSAL && object->list.objects[0]->tag == TAG_OID) {
  ai->algorithm = r_asn1_stringify_oid (object->list.objects[0]->sector, object->list.objects[0]->length);
 }
 ai->parameters = ((void*)0);

 return 1;
}
