
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int logical ;
typedef int doublereal ;



logical disnan_(doublereal *din)
{

    logical ret_val;


    extern logical dlaisnan_(doublereal *, doublereal *);
    ret_val = dlaisnan_(din, din);
    return ret_val;
}
