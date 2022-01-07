
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32 ;
typedef int uint16 ;
struct TYPE_3__ {int allowed; int auditdeny; int auditallow; char const* tcontext; int tclass; scalar_t__ tcontext_is_valid; int scontext; scalar_t__ permissive; } ;
typedef TYPE_1__ avc_cache ;


 int ERRCODE_INSUFFICIENT_PRIVILEGE ;
 int ERROR ;
 char const* SEPGSQL_AVC_NOAUDIT ;
 scalar_t__ SEPGSQL_MODE_INTERNAL ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int sepgsql_audit_log (int,int ,char const*,int ,int,char const*) ;
 int sepgsql_avc_check_valid () ;
 TYPE_1__* sepgsql_avc_lookup (char*,char const*,int ) ;
 char const* sepgsql_avc_unlabeled () ;
 char* sepgsql_get_client_label () ;
 scalar_t__ sepgsql_get_debug_audit () ;
 scalar_t__ sepgsql_get_mode () ;
 int sepgsql_getenforce () ;

bool
sepgsql_avc_check_perms_label(const char *tcontext,
         uint16 tclass, uint32 required,
         const char *audit_name,
         bool abort_on_violation)
{
 char *scontext = sepgsql_get_client_label();
 avc_cache *cache;
 uint32 denied;
 uint32 audited;
 bool result;

 sepgsql_avc_check_valid();
 do
 {
  result = 1;





  if (tcontext)
   cache = sepgsql_avc_lookup(scontext, tcontext, tclass);
  else
   cache = sepgsql_avc_lookup(scontext,
            sepgsql_avc_unlabeled(), tclass);

  denied = required & ~cache->allowed;




  if (sepgsql_get_debug_audit())
   audited = (denied ? (denied & ~0) : (required & ~0));
  else
   audited = denied ? (denied & cache->auditdeny)
    : (required & cache->auditallow);

  if (denied)
  {







   if (!sepgsql_getenforce() || cache->permissive)
    cache->allowed |= required;
   else
    result = 0;
  }
 } while (!sepgsql_avc_check_valid());
 if (audited != 0 &&
  audit_name != SEPGSQL_AVC_NOAUDIT &&
  sepgsql_get_mode() != SEPGSQL_MODE_INTERNAL)
 {
  sepgsql_audit_log(denied != 0,
        cache->scontext,
        cache->tcontext_is_valid ?
        cache->tcontext : sepgsql_avc_unlabeled(),
        cache->tclass,
        audited,
        audit_name);
 }

 if (abort_on_violation && !result)
  ereport(ERROR,
    (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
     errmsg("SELinux: security policy violation")));

 return result;
}
