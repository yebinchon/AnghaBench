
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
typedef TYPE_1__ DomainConstraintState ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int
dcs_cmp(const void *a, const void *b)
{
 const DomainConstraintState *const *ca = (const DomainConstraintState *const *) a;
 const DomainConstraintState *const *cb = (const DomainConstraintState *const *) b;

 return strcmp((*ca)->name, (*cb)->name);
}
