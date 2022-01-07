
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int security_context_t ;


 int ERRCODE_INTERNAL_ERROR ;
 int ERROR ;
 char* MemoryContextStrdup (int ,int ) ;
 int PG_END_TRY () ;
 int PG_FINALLY () ;
 int PG_TRY () ;
 int avc_mem_cxt ;
 char* avc_unlabeled ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int freecon (int ) ;
 scalar_t__ security_get_initial_context_raw (char*,int *) ;

__attribute__((used)) static char *
sepgsql_avc_unlabeled(void)
{
 if (!avc_unlabeled)
 {
  security_context_t unlabeled;

  if (security_get_initial_context_raw("unlabeled", &unlabeled) < 0)
   ereport(ERROR,
     (errcode(ERRCODE_INTERNAL_ERROR),
      errmsg("SELinux: failed to get initial security label: %m")));
  PG_TRY();
  {
   avc_unlabeled = MemoryContextStrdup(avc_mem_cxt, unlabeled);
  }
  PG_FINALLY();
  {
   freecon(unlabeled);
  }
  PG_END_TRY();
 }
 return avc_unlabeled;
}
