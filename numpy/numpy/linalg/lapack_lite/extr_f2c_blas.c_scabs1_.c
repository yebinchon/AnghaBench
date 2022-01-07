
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ real ;
typedef scalar_t__ doublereal ;
struct TYPE_4__ {scalar_t__ r; } ;
typedef TYPE_1__ complex ;


 int dabs (scalar_t__) ;
 scalar_t__ r_imag (TYPE_1__*) ;

doublereal scabs1_(complex *z__)
{

    real ret_val, r__1, r__2;
    ret_val = (r__1 = z__->r, dabs(r__1)) + (r__2 = r_imag(z__), dabs(r__2));
    return ret_val;
}
