
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int shippable_extensions; } ;
typedef TYPE_1__ PgFdwRelationInfo ;
typedef int Oid ;


 scalar_t__ OidIsValid (int ) ;
 int getExtensionOfObject (int ,int ) ;
 scalar_t__ list_member_oid (int ,int ) ;

__attribute__((used)) static bool
lookup_shippable(Oid objectId, Oid classId, PgFdwRelationInfo *fpinfo)
{
 Oid extensionOid;





 extensionOid = getExtensionOfObject(classId, objectId);


 if (OidIsValid(extensionOid) &&
  list_member_oid(fpinfo->shippable_extensions, extensionOid))
  return 1;

 return 0;
}
