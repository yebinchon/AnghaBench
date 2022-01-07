
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;


 scalar_t__ isMask (int) ;

__attribute__((used)) static bool isShiftedMask (ut32 value) {
  return value && isMask ((value - 1) | value);
}
