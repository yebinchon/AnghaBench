
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * dcc; int constraints; } ;
typedef TYPE_1__ DomainConstraintRef ;
typedef int DomainConstraintCache ;


 int NIL ;
 int decr_dcc_refcount (int *) ;

__attribute__((used)) static void
dccref_deletion_callback(void *arg)
{
 DomainConstraintRef *ref = (DomainConstraintRef *) arg;
 DomainConstraintCache *dcc = ref->dcc;


 if (dcc)
 {
  ref->constraints = NIL;
  ref->dcc = ((void*)0);
  decr_dcc_refcount(dcc);
 }
}
