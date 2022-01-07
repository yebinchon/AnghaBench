
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int logical ;
typedef scalar_t__ doublereal ;



logical dlaisnan_(doublereal *din1, doublereal *din2)
{

    logical ret_val;
    ret_val = *din1 != *din2;
    return ret_val;
}
