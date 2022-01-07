
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {void* arg; int func; } ;
struct TYPE_8__ {TYPE_1__* domainData; } ;
struct TYPE_7__ {int need_exprstate; int constraints; TYPE_1__* dcc; int refctx; TYPE_3__* tcache; TYPE_4__ callback; } ;
struct TYPE_6__ {int constraints; int dccRefCount; } ;
typedef int Oid ;
typedef int MemoryContext ;
typedef TYPE_2__ DomainConstraintRef ;


 int MemoryContextRegisterResetCallback (int ,TYPE_4__*) ;
 int NIL ;
 int TYPECACHE_DOMAIN_CONSTR_INFO ;
 int dccref_deletion_callback ;
 TYPE_3__* lookup_type_cache (int ,int ) ;
 int prep_domain_constraints (int ,int ) ;

void
InitDomainConstraintRef(Oid type_id, DomainConstraintRef *ref,
      MemoryContext refctx, bool need_exprstate)
{

 ref->tcache = lookup_type_cache(type_id, TYPECACHE_DOMAIN_CONSTR_INFO);
 ref->need_exprstate = need_exprstate;

 ref->refctx = refctx;
 ref->dcc = ((void*)0);
 ref->callback.func = dccref_deletion_callback;
 ref->callback.arg = (void *) ref;
 MemoryContextRegisterResetCallback(refctx, &ref->callback);

 if (ref->tcache->domainData)
 {
  ref->dcc = ref->tcache->domainData;
  ref->dcc->dccRefCount++;
  if (ref->need_exprstate)
   ref->constraints = prep_domain_constraints(ref->dcc->constraints,
                ref->refctx);
  else
   ref->constraints = ref->dcc->constraints;
 }
 else
  ref->constraints = NIL;
}
