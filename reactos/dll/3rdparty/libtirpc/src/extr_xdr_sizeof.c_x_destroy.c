
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * x_private; scalar_t__ x_base; scalar_t__ x_handy; } ;
typedef TYPE_1__ XDR ;


 int free (int *) ;

__attribute__((used)) static void
x_destroy(XDR *xdrs)
{
 xdrs->x_handy = 0;
 xdrs->x_base = 0;
 if (xdrs->x_private) {
  free(xdrs->x_private);
  xdrs->x_private = ((void*)0);
 }
 return;
}
