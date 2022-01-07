
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ dccRefCount; int dccContext; } ;
typedef TYPE_1__ DomainConstraintCache ;


 int Assert (int) ;
 int MemoryContextDelete (int ) ;

__attribute__((used)) static void
decr_dcc_refcount(DomainConstraintCache *dcc)
{
 Assert(dcc->dccRefCount > 0);
 if (--(dcc->dccRefCount) <= 0)
  MemoryContextDelete(dcc->dccContext);
}
