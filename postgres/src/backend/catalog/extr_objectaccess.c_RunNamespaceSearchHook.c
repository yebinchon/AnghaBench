
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ereport_on_violation; int result; } ;
typedef int Oid ;
typedef TYPE_1__ ObjectAccessNamespaceSearch ;


 int Assert (int ) ;
 int NamespaceRelationId ;
 int OAT_NAMESPACE_SEARCH ;
 int memset (TYPE_1__*,int ,int) ;
 int object_access_hook (int ,int ,int ,int ,void*) ;
 int stub1 (int ,int ,int ,int ,void*) ;

bool
RunNamespaceSearchHook(Oid objectId, bool ereport_on_violation)
{
 ObjectAccessNamespaceSearch ns_arg;


 Assert(object_access_hook != ((void*)0));

 memset(&ns_arg, 0, sizeof(ObjectAccessNamespaceSearch));
 ns_arg.ereport_on_violation = ereport_on_violation;
 ns_arg.result = 1;

 (*object_access_hook) (OAT_NAMESPACE_SEARCH,
         NamespaceRelationId, objectId, 0,
         (void *) &ns_arg);

 return ns_arg.result;
}
