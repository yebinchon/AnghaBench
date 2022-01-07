
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int bool_t ;
struct TYPE_3__ {int x_handy; } ;
typedef TYPE_1__ XDR ;


 scalar_t__ BYTES_PER_XDR_UNIT ;
 int TRUE ;

__attribute__((used)) static bool_t
x_putlong(XDR *xdrs, const long *longp)
{
 xdrs->x_handy += BYTES_PER_XDR_UNIT;
 return (TRUE);
}
