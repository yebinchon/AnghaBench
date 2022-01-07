
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_ssa_phi ;
typedef int zend_long ;


 int ZEND_LONG_MAX ;
 int pi_range (int *,int,int,int ,int ,int ,int,int ) ;

__attribute__((used)) static inline void pi_range_min(zend_ssa_phi *phi, int var, zend_long val) {
 pi_range(phi, var, -1, val, ZEND_LONG_MAX, 0, 1, 0);
}
