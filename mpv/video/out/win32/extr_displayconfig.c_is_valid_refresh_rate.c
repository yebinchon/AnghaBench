
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Denominator; int Numerator; } ;
typedef TYPE_1__ DISPLAYCONFIG_RATIONAL ;



__attribute__((used)) static bool is_valid_refresh_rate(DISPLAYCONFIG_RATIONAL rr)
{

    return rr.Denominator != 0 && rr.Numerator / rr.Denominator > 1;
}
