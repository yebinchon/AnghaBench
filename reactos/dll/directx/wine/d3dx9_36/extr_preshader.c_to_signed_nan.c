
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG64 ;


 scalar_t__ isnan (double) ;

__attribute__((used)) static double to_signed_nan(double v)
{
    static const union
    {
        ULONG64 ulong64_value;
        double double_value;
    }
    signed_nan =
    {
        0xfff8000000000000
    };

    return isnan(v) ? signed_nan.double_value : v;
}
