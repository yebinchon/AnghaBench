
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int MAY_BE_ARRAY ;
 int MAY_BE_ARRAY_KEY_ANY ;
 int MAY_BE_ARRAY_OF_ANY ;
 int MAY_BE_ARRAY_OF_REF ;

__attribute__((used)) static inline uint32_t mask_for_type_check(uint32_t type) {
 if (type & MAY_BE_ARRAY) {
  return type | (MAY_BE_ARRAY_KEY_ANY|MAY_BE_ARRAY_OF_ANY|MAY_BE_ARRAY_OF_REF);
 } else {
  return type;
 }
}
