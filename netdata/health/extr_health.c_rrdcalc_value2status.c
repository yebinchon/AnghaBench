
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ calculated_number ;
typedef int RRDCALC_STATUS ;


 int RRDCALC_STATUS_CLEAR ;
 int RRDCALC_STATUS_RAISED ;
 int RRDCALC_STATUS_UNDEFINED ;
 scalar_t__ isinf (scalar_t__) ;
 scalar_t__ isnan (scalar_t__) ;

__attribute__((used)) static inline RRDCALC_STATUS rrdcalc_value2status(calculated_number n) {
    if(isnan(n) || isinf(n)) return RRDCALC_STATUS_UNDEFINED;
    if(n) return RRDCALC_STATUS_RAISED;
    return RRDCALC_STATUS_CLEAR;
}
