
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ real ;
typedef int logical ;



logical slaisnan_(real *sin1, real *sin2)
{

    logical ret_val;
    ret_val = *sin1 != *sin2;
    return ret_val;
}
