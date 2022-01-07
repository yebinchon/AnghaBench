
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_ssa_phi ;
typedef int uint32_t ;


 int MAY_BE_ANY ;
 int MAY_BE_ARRAY_KEY_ANY ;
 int MAY_BE_ARRAY_OF_ANY ;
 int MAY_BE_ARRAY_OF_REF ;
 int pi_type_mask (int *,int) ;

__attribute__((used)) static inline void pi_not_type_mask(zend_ssa_phi *phi, uint32_t type_mask) {
 uint32_t relevant = MAY_BE_ANY|MAY_BE_ARRAY_KEY_ANY|MAY_BE_ARRAY_OF_ANY|MAY_BE_ARRAY_OF_REF;
 pi_type_mask(phi, ~type_mask & relevant);
}
