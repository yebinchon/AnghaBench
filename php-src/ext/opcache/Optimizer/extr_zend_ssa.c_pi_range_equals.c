
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_ssa_phi ;
typedef int zend_long ;


 int pi_range (int *,int,int,int ,int ,int ,int ,int ) ;

__attribute__((used)) static inline void pi_range_equals(zend_ssa_phi *phi, int var, zend_long val) {
 pi_range(phi, var, var, val, val, 0, 0, 0);
}
