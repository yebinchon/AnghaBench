
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ len; } ;
typedef TYPE_1__* StringInfo ;
typedef scalar_t__ SharedDependencyType ;
typedef int SharedDependencyObjectType ;
typedef int ObjectAddress ;


 int ERROR ;


 scalar_t__ SHARED_DEPENDENCY_ACL ;
 scalar_t__ SHARED_DEPENDENCY_OWNER ;
 scalar_t__ SHARED_DEPENDENCY_POLICY ;

 int _ (char*) ;
 int appendStringInfo (TYPE_1__*,int ,...) ;
 int appendStringInfoChar (TYPE_1__*,char) ;
 int elog (int ,char*,int) ;
 char* getObjectDescription (int *) ;
 int ngettext (char*,char*,int) ;
 int pfree (char*) ;

__attribute__((used)) static void
storeObjectDescription(StringInfo descs,
        SharedDependencyObjectType type,
        ObjectAddress *object,
        SharedDependencyType deptype,
        int count)
{
 char *objdesc = getObjectDescription(object);


 if (descs->len != 0)
  appendStringInfoChar(descs, '\n');

 switch (type)
 {
  case 130:
  case 128:
   if (deptype == SHARED_DEPENDENCY_OWNER)
    appendStringInfo(descs, _("owner of %s"), objdesc);
   else if (deptype == SHARED_DEPENDENCY_ACL)
    appendStringInfo(descs, _("privileges for %s"), objdesc);
   else if (deptype == SHARED_DEPENDENCY_POLICY)
    appendStringInfo(descs, _("target of %s"), objdesc);
   else
    elog(ERROR, "unrecognized dependency type: %d",
      (int) deptype);
   break;

  case 129:

   appendStringInfo(descs, ngettext("%d object in %s",
            "%d objects in %s",
            count),
        count, objdesc);
   break;

  default:
   elog(ERROR, "unrecognized object type: %d", type);
 }

 pfree(objdesc);
}
