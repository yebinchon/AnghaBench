
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ objectSubId; void* objectId; void* classId; } ;
typedef void* Oid ;
typedef TYPE_1__ ObjectAddress ;


 char* getObjectDescription (TYPE_1__*) ;

char *
getObjectDescriptionOids(Oid classid, Oid objid)
{
 ObjectAddress address;

 address.classId = classid;
 address.objectId = objid;
 address.objectSubId = 0;

 return getObjectDescription(&address);
}
