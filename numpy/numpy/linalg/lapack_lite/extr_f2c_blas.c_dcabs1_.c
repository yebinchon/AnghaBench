
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ doublereal ;
struct TYPE_4__ {scalar_t__ r; } ;
typedef TYPE_1__ doublecomplex ;


 int abs (scalar_t__) ;
 scalar_t__ d_imag (TYPE_1__*) ;

doublereal dcabs1_(doublecomplex *z__)
{

    doublereal ret_val, d__1, d__2;
    ret_val = (d__1 = z__->r, abs(d__1)) + (d__2 = d_imag(z__), abs(d__2));
    return ret_val;
}
