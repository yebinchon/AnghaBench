
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ objectSubId; scalar_t__ objectId; int classId; } ;
typedef scalar_t__ Oid ;
typedef TYPE_1__ ObjectAddress ;


 int Assert (int) ;
 scalar_t__ CurrentExtensionObject ;
 int DEPENDENCY_EXTENSION ;
 int ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ;
 int ERROR ;
 int ExtensionRelationId ;
 scalar_t__ OidIsValid (scalar_t__) ;
 scalar_t__ creating_extension ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ,int ) ;
 scalar_t__ getExtensionOfObject (int ,scalar_t__) ;
 int getObjectDescription (TYPE_1__ const*) ;
 int get_extension_name (scalar_t__) ;
 int recordDependencyOn (TYPE_1__ const*,TYPE_1__*,int ) ;

void
recordDependencyOnCurrentExtension(const ObjectAddress *object,
           bool isReplace)
{

 Assert(object->objectSubId == 0);

 if (creating_extension)
 {
  ObjectAddress extension;


  if (isReplace)
  {
   Oid oldext;

   oldext = getExtensionOfObject(object->classId, object->objectId);
   if (OidIsValid(oldext))
   {

    if (oldext == CurrentExtensionObject)
     return;

    ereport(ERROR,
      (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
       errmsg("%s is already a member of extension \"%s\"",
        getObjectDescription(object),
        get_extension_name(oldext))));
   }
  }


  extension.classId = ExtensionRelationId;
  extension.objectId = CurrentExtensionObject;
  extension.objectSubId = 0;

  recordDependencyOn(object, &extension, DEPENDENCY_EXTENSION);
 }
}
