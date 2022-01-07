
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32 ;
typedef int uint16 ;
struct av_decision {int flags; int auditdeny; int auditallow; int allowed; } ;
typedef int security_context_t ;
struct TYPE_5__ {int hash; int hot_cache; int permissive; int tcontext_is_valid; void* ncontext; int auditdeny; int auditallow; int allowed; int tclass; void* tcontext; void* scontext; } ;
typedef TYPE_1__ avc_cache ;
typedef int MemoryContext ;


 int AVC_NUM_SLOTS ;
 int MemoryContextSwitchTo (int ) ;
 int SELINUX_AVD_FLAGS_PERMISSIVE ;
 int SEPG_CLASS_DB_PROCEDURE ;
 int SEPG_CLASS_PROCESS ;
 int avc_mem_cxt ;
 scalar_t__ avc_num_caches ;
 int * avc_slots ;
 scalar_t__ avc_threshold ;
 int lcons (TYPE_1__*,int ) ;
 TYPE_1__* palloc0 (int) ;
 int pfree (char*) ;
 void* pstrdup (char const*) ;
 scalar_t__ security_check_context_raw (int ) ;
 int sepgsql_avc_hash (char const*,char const*,int ) ;
 int sepgsql_avc_reclaim () ;
 char* sepgsql_avc_unlabeled () ;
 int sepgsql_compute_avd (char const*,char const*,int ,struct av_decision*) ;
 char* sepgsql_compute_create (char const*,char const*,int ,int *) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static avc_cache *
sepgsql_avc_compute(const char *scontext, const char *tcontext, uint16 tclass)
{
 char *ucontext = ((void*)0);
 char *ncontext = ((void*)0);
 MemoryContext oldctx;
 avc_cache *cache;
 uint32 hash;
 int index;
 struct av_decision avd;

 hash = sepgsql_avc_hash(scontext, tcontext, tclass);
 index = hash % AVC_NUM_SLOTS;







 if (security_check_context_raw((security_context_t) tcontext) != 0)
  ucontext = sepgsql_avc_unlabeled();




 if (!ucontext)
  sepgsql_compute_avd(scontext, tcontext, tclass, &avd);
 else
  sepgsql_compute_avd(scontext, ucontext, tclass, &avd);
 if (tclass == SEPG_CLASS_DB_PROCEDURE)
 {
  if (!ucontext)
   ncontext = sepgsql_compute_create(scontext, tcontext,
             SEPG_CLASS_PROCESS, ((void*)0));
  else
   ncontext = sepgsql_compute_create(scontext, ucontext,
             SEPG_CLASS_PROCESS, ((void*)0));
  if (strcmp(scontext, ncontext) == 0)
  {
   pfree(ncontext);
   ncontext = ((void*)0);
  }
 }




 oldctx = MemoryContextSwitchTo(avc_mem_cxt);

 cache = palloc0(sizeof(avc_cache));

 cache->hash = hash;
 cache->scontext = pstrdup(scontext);
 cache->tcontext = pstrdup(tcontext);
 cache->tclass = tclass;

 cache->allowed = avd.allowed;
 cache->auditallow = avd.auditallow;
 cache->auditdeny = avd.auditdeny;
 cache->hot_cache = 1;
 if (avd.flags & SELINUX_AVD_FLAGS_PERMISSIVE)
  cache->permissive = 1;
 if (!ucontext)
  cache->tcontext_is_valid = 1;
 if (ncontext)
  cache->ncontext = pstrdup(ncontext);

 avc_num_caches++;

 if (avc_num_caches > avc_threshold)
  sepgsql_avc_reclaim();

 avc_slots[index] = lcons(cache, avc_slots[index]);

 MemoryContextSwitchTo(oldctx);

 return cache;
}
