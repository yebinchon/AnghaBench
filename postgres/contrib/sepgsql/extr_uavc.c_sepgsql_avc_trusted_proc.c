
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* ncontext; } ;
typedef TYPE_1__ avc_cache ;
struct TYPE_6__ {scalar_t__ objectSubId; int objectId; int classId; } ;
typedef int Oid ;
typedef TYPE_2__ ObjectAddress ;


 char* GetSecurityLabel (TYPE_2__*,int ) ;
 int ProcedureRelationId ;
 int SEPGSQL_LABEL_TAG ;
 int SEPG_CLASS_DB_PROCEDURE ;
 int sepgsql_avc_check_valid () ;
 TYPE_1__* sepgsql_avc_lookup (char*,char*,int ) ;
 char* sepgsql_avc_unlabeled () ;
 char* sepgsql_get_client_label () ;

char *
sepgsql_avc_trusted_proc(Oid functionId)
{
 char *scontext = sepgsql_get_client_label();
 char *tcontext;
 ObjectAddress tobject;
 avc_cache *cache;

 tobject.classId = ProcedureRelationId;
 tobject.objectId = functionId;
 tobject.objectSubId = 0;
 tcontext = GetSecurityLabel(&tobject, SEPGSQL_LABEL_TAG);

 sepgsql_avc_check_valid();
 do
 {
  if (tcontext)
   cache = sepgsql_avc_lookup(scontext, tcontext,
            SEPG_CLASS_DB_PROCEDURE);
  else
   cache = sepgsql_avc_lookup(scontext, sepgsql_avc_unlabeled(),
            SEPG_CLASS_DB_PROCEDURE);
 } while (!sepgsql_avc_check_valid());

 return cache->ncontext;
}
