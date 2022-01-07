
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int createdb_dtemplate; } ;
struct TYPE_9__ {int dropflags; } ;
struct TYPE_8__ {int result; int ereport_on_violation; } ;
struct TYPE_7__ {int is_internal; } ;
struct TYPE_6__ {int is_internal; } ;
typedef int const Oid ;
typedef int ObjectAccessType ;
typedef TYPE_1__ ObjectAccessPostCreate ;
typedef TYPE_2__ ObjectAccessPostAlter ;
typedef TYPE_3__ ObjectAccessNamespaceSearch ;
typedef TYPE_4__ ObjectAccessDrop ;


 int Assert (int) ;

 int ERROR ;






 int PERFORM_DELETION_INTERNAL ;


 int elog (int ,char*,int) ;
 int next_object_access_hook (int,int const,int const,int,void*) ;
 int sepgsql_attribute_drop (int const,int) ;
 int sepgsql_attribute_post_create (int const,int) ;
 int sepgsql_attribute_setattr (int const,int) ;
 TYPE_5__ sepgsql_context_info ;
 int sepgsql_database_drop (int const) ;
 int sepgsql_database_post_create (int const,int ) ;
 int sepgsql_database_setattr (int const) ;
 int sepgsql_proc_drop (int const) ;
 int sepgsql_proc_execute (int const) ;
 int sepgsql_proc_post_create (int const) ;
 int sepgsql_proc_setattr (int const) ;
 int sepgsql_relation_drop (int const) ;
 int sepgsql_relation_post_create (int const) ;
 int sepgsql_relation_setattr (int const) ;
 int sepgsql_schema_drop (int const) ;
 int sepgsql_schema_post_create (int const) ;
 int sepgsql_schema_search (int const,int ) ;
 int sepgsql_schema_setattr (int const) ;
 int stub1 (int,int const,int const,int,void*) ;

__attribute__((used)) static void
sepgsql_object_access(ObjectAccessType access,
       Oid classId,
       Oid objectId,
       int subId,
       void *arg)
{
 if (next_object_access_hook)
  (*next_object_access_hook) (access, classId, objectId, subId, arg);

 switch (access)
 {
  case 130:
   {
    ObjectAccessPostCreate *pc_arg = arg;
    bool is_internal;

    is_internal = pc_arg ? pc_arg->is_internal : 0;

    switch (classId)
    {
     case 136:
      Assert(!is_internal);
      sepgsql_database_post_create(objectId,
              sepgsql_context_info.createdb_dtemplate);
      break;

     case 135:
      Assert(!is_internal);
      sepgsql_schema_post_create(objectId);
      break;

     case 128:
      if (subId == 0)
      {
       if (is_internal)
        break;

       sepgsql_relation_post_create(objectId);
      }
      else
       sepgsql_attribute_post_create(objectId, subId);
      break;

     case 129:
      Assert(!is_internal);
      sepgsql_proc_post_create(objectId);
      break;

     default:

      break;
    }
   }
   break;

  case 134:
   {
    ObjectAccessDrop *drop_arg = (ObjectAccessDrop *) arg;






    if ((drop_arg->dropflags & PERFORM_DELETION_INTERNAL) != 0)
     break;

    switch (classId)
    {
     case 136:
      sepgsql_database_drop(objectId);
      break;

     case 135:
      sepgsql_schema_drop(objectId);
      break;

     case 128:
      if (subId == 0)
       sepgsql_relation_drop(objectId);
      else
       sepgsql_attribute_drop(objectId, subId);
      break;

     case 129:
      sepgsql_proc_drop(objectId);
      break;

     default:

      break;
    }
   }
   break;

  case 131:
   {
    ObjectAccessPostAlter *pa_arg = arg;
    bool is_internal = pa_arg->is_internal;

    switch (classId)
    {
     case 136:
      Assert(!is_internal);
      sepgsql_database_setattr(objectId);
      break;

     case 135:
      Assert(!is_internal);
      sepgsql_schema_setattr(objectId);
      break;

     case 128:
      if (subId == 0)
      {







       if (is_internal)
        break;

       sepgsql_relation_setattr(objectId);
      }
      else
       sepgsql_attribute_setattr(objectId, subId);
      break;

     case 129:
      Assert(!is_internal);
      sepgsql_proc_setattr(objectId);
      break;

     default:

      break;
    }
   }
   break;

  case 132:
   {
    ObjectAccessNamespaceSearch *ns_arg = arg;





    if (!ns_arg->result)
     break;

    Assert(classId == 135);
    Assert(ns_arg->result);
    ns_arg->result
     = sepgsql_schema_search(objectId,
           ns_arg->ereport_on_violation);
   }
   break;

  case 133:
   {
    Assert(classId == 129);
    sepgsql_proc_execute(objectId);
   }
   break;

  default:
   elog(ERROR, "unexpected object access type: %d", (int) access);
   break;
 }
}
