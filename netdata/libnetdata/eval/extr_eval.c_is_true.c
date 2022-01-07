
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ calculated_number ;


 scalar_t__ isinf (scalar_t__) ;
 scalar_t__ isnan (scalar_t__) ;

__attribute__((used)) static inline int is_true(calculated_number n) {
    if(isnan(n)) return 0;
    if(isinf(n)) return 1;
    if(n == 0) return 0;
    return 1;
}
