
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ domain_type; } ;
typedef scalar_t__ Oid ;
typedef int * MemoryContext ;
typedef TYPE_1__ DomainIOData ;
typedef int Datum ;


 int * CurrentMemoryContext ;
 int domain_check_input (int ,int,TYPE_1__*) ;
 TYPE_1__* domain_state_setup (scalar_t__,int,int *) ;

void
domain_check(Datum value, bool isnull, Oid domainType,
    void **extra, MemoryContext mcxt)
{
 DomainIOData *my_extra = ((void*)0);

 if (mcxt == ((void*)0))
  mcxt = CurrentMemoryContext;






 if (extra)
  my_extra = (DomainIOData *) *extra;
 if (my_extra == ((void*)0) || my_extra->domain_type != domainType)
 {
  my_extra = domain_state_setup(domainType, 1, mcxt);
  if (extra)
   *extra = (void *) my_extra;
 }




 domain_check_input(value, isnull, my_extra);
}
