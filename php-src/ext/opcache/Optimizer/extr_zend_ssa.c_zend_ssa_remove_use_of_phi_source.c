
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zend_ssa_phi ;
struct TYPE_6__ {TYPE_1__* vars; } ;
typedef TYPE_2__ zend_ssa ;
struct TYPE_5__ {int * phi_use_chain; } ;


 int ** zend_ssa_next_use_phi_ptr (TYPE_2__*,int,int *) ;

__attribute__((used)) static inline void zend_ssa_remove_use_of_phi_source(zend_ssa *ssa, zend_ssa_phi *phi, int source, zend_ssa_phi *next_use_phi)
{
 zend_ssa_phi **cur = &ssa->vars[source].phi_use_chain;
 while (*cur && *cur != phi) {
  cur = zend_ssa_next_use_phi_ptr(ssa, source, *cur);
 }
 if (*cur) {
  *cur = next_use_phi;
 }
}
