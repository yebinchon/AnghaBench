
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_int ;
typedef int int32_t ;
typedef int * caddr_t ;
struct TYPE_3__ {scalar_t__ x_op; int * x_private; int x_handy; scalar_t__ x_base; } ;
typedef TYPE_1__ XDR ;


 scalar_t__ PtrToUlong (scalar_t__) ;
 scalar_t__ UIntToPtr (scalar_t__) ;
 scalar_t__ XDR_ENCODE ;
 int free (int *) ;
 scalar_t__ malloc (scalar_t__) ;

__attribute__((used)) static int32_t *
x_inline(XDR *xdrs, u_int len)
{
 if (len == 0) {
  return (((void*)0));
 }
 if (xdrs->x_op != XDR_ENCODE) {
  return (((void*)0));
 }
 if (len < PtrToUlong(xdrs->x_base)) {

  xdrs->x_handy += len;
  return ((int32_t *) xdrs->x_private);
 } else {

  if (xdrs->x_private)
   free(xdrs->x_private);
  if ((xdrs->x_private = (caddr_t) malloc(len)) == ((void*)0)) {
   xdrs->x_base = 0;
   return (((void*)0));
  }
  xdrs->x_base = UIntToPtr(len);

  xdrs->x_handy += len;
  return ((int32_t *) xdrs->x_private);
 }
}
