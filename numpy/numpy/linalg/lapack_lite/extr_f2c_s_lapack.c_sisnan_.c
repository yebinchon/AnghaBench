
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int real ;
typedef int logical ;



logical sisnan_(real *sin__)
{

    logical ret_val;


    extern logical slaisnan_(real *, real *);
    ret_val = slaisnan_(sin__, sin__);
    return ret_val;
}
