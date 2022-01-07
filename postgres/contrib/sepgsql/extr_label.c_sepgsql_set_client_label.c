
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int security_context_t ;
struct TYPE_4__ {int label; int subid; } ;
typedef TYPE_1__ pending_label ;
typedef int MemoryContext ;


 int CurTransactionContext ;
 int ERRCODE_INVALID_NAME ;
 int ERROR ;
 int GetCurrentSubTransactionId () ;
 int MemoryContextSwitchTo (int ) ;
 int SEPG_CLASS_PROCESS ;
 int SEPG_PROCESS__DYNTRANSITION ;
 int SEPG_PROCESS__SETCURRENT ;
 char* client_label_peer ;
 int client_label_pending ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*) ;
 int lappend (int ,TYPE_1__*) ;
 TYPE_1__* palloc0 (int) ;
 int pstrdup (char const*) ;
 scalar_t__ security_check_context_raw (int ) ;
 int sepgsql_avc_check_perms_label (char const*,int ,int ,int *,int) ;
 char const* sepgsql_get_client_label () ;

__attribute__((used)) static void
sepgsql_set_client_label(const char *new_label)
{
 const char *tcontext;
 MemoryContext oldcxt;
 pending_label *plabel;


 if (!new_label)
  tcontext = client_label_peer;
 else
 {
  if (security_check_context_raw((security_context_t) new_label) < 0)
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_NAME),
      errmsg("SELinux: invalid security label: \"%s\"",
       new_label)));
  tcontext = new_label;
 }


 sepgsql_avc_check_perms_label(sepgsql_get_client_label(),
          SEPG_CLASS_PROCESS,
          SEPG_PROCESS__SETCURRENT,
          ((void*)0),
          1);

 sepgsql_avc_check_perms_label(tcontext,
          SEPG_CLASS_PROCESS,
          SEPG_PROCESS__DYNTRANSITION,
          ((void*)0),
          1);





 oldcxt = MemoryContextSwitchTo(CurTransactionContext);

 plabel = palloc0(sizeof(pending_label));
 plabel->subid = GetCurrentSubTransactionId();
 if (new_label)
  plabel->label = pstrdup(new_label);
 client_label_pending = lappend(client_label_pending, plabel);

 MemoryContextSwitchTo(oldcxt);
}
