
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int int64_t ;


 int UTIL_ltoa_radix (int ,char*,int) ;

int UTIL_utoa(uint32_t value, char *dest) { return UTIL_ltoa_radix((int64_t)value, dest, 10); }
