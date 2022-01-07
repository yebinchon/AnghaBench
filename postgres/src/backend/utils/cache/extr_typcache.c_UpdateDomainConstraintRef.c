
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int flags; scalar_t__ typtype; scalar_t__ domainData; } ;
typedef TYPE_1__ TypeCacheEntry ;
struct TYPE_9__ {int constraints; int dccRefCount; } ;
struct TYPE_8__ {scalar_t__ dcc; int constraints; int refctx; scalar_t__ need_exprstate; TYPE_1__* tcache; } ;
typedef TYPE_2__ DomainConstraintRef ;
typedef TYPE_3__ DomainConstraintCache ;


 int NIL ;
 int TCFLAGS_CHECKED_DOMAIN_CONSTRAINTS ;
 scalar_t__ TYPTYPE_DOMAIN ;
 int decr_dcc_refcount (TYPE_3__*) ;
 int load_domaintype_info (TYPE_1__*) ;
 int prep_domain_constraints (int ,int ) ;

void
UpdateDomainConstraintRef(DomainConstraintRef *ref)
{
 TypeCacheEntry *typentry = ref->tcache;


 if ((typentry->flags & TCFLAGS_CHECKED_DOMAIN_CONSTRAINTS) == 0 &&
  typentry->typtype == TYPTYPE_DOMAIN)
  load_domaintype_info(typentry);


 if (ref->dcc != typentry->domainData)
 {

  DomainConstraintCache *dcc = ref->dcc;

  if (dcc)
  {
   ref->constraints = NIL;
   ref->dcc = ((void*)0);
   decr_dcc_refcount(dcc);
  }
  dcc = typentry->domainData;
  if (dcc)
  {
   ref->dcc = dcc;
   dcc->dccRefCount++;
   if (ref->need_exprstate)
    ref->constraints = prep_domain_constraints(dcc->constraints,
                 ref->refctx);
   else
    ref->constraints = dcc->constraints;
  }
 }
}
