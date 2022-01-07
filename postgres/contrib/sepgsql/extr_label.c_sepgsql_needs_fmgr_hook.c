
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ objectSubId; int objectId; int classId; } ;
typedef int Oid ;
typedef TYPE_1__ ObjectAddress ;


 int ProcedureRelationId ;
 int SEPGSQL_AVC_NOAUDIT ;
 int SEPG_CLASS_DB_PROCEDURE ;
 int SEPG_DB_PROCEDURE__ENTRYPOINT ;
 int SEPG_DB_PROCEDURE__EXECUTE ;
 scalar_t__ next_needs_fmgr_hook (int ) ;
 int sepgsql_avc_check_perms (TYPE_1__*,int ,int,int ,int) ;
 int * sepgsql_avc_trusted_proc (int ) ;
 scalar_t__ stub1 (int ) ;

__attribute__((used)) static bool
sepgsql_needs_fmgr_hook(Oid functionId)
{
 ObjectAddress object;

 if (next_needs_fmgr_hook &&
  (*next_needs_fmgr_hook) (functionId))
  return 1;







 if (sepgsql_avc_trusted_proc(functionId) != ((void*)0))
  return 1;







 object.classId = ProcedureRelationId;
 object.objectId = functionId;
 object.objectSubId = 0;
 if (!sepgsql_avc_check_perms(&object,
         SEPG_CLASS_DB_PROCEDURE,
         SEPG_DB_PROCEDURE__EXECUTE |
         SEPG_DB_PROCEDURE__ENTRYPOINT,
         SEPGSQL_AVC_NOAUDIT, 0))
  return 1;

 return 0;
}
