
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_6__ {int objectSubId; int objectId; int classId; } ;
struct TYPE_5__ {int numrefs; int maxrefs; TYPE_2__* refs; int extras; } ;
typedef int Oid ;
typedef size_t ObjectClass ;
typedef TYPE_1__ ObjectAddresses ;
typedef TYPE_2__ ObjectAddress ;


 int Assert (int) ;
 scalar_t__ LAST_OCLASS ;
 int StaticAssertStmt (int,char*) ;
 scalar_t__ lengthof (int *) ;
 int * object_classes ;
 scalar_t__ repalloc (TYPE_2__*,int) ;

__attribute__((used)) static void
add_object_address(ObjectClass oclass, Oid objectId, int32 subId,
       ObjectAddresses *addrs)
{
 ObjectAddress *item;




 StaticAssertStmt(lengthof(object_classes) == LAST_OCLASS + 1,
      "object_classes[] must cover all ObjectClasses");


 if (addrs->numrefs >= addrs->maxrefs)
 {
  addrs->maxrefs *= 2;
  addrs->refs = (ObjectAddress *)
   repalloc(addrs->refs, addrs->maxrefs * sizeof(ObjectAddress));
  Assert(!addrs->extras);
 }

 item = addrs->refs + addrs->numrefs;
 item->classId = object_classes[oclass];
 item->objectId = objectId;
 item->objectSubId = subId;
 addrs->numrefs++;
}
