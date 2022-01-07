
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PrintfTarget ;


 int dopr_outchmulti (char,int,int *) ;

__attribute__((used)) static void
trailing_pad(int padlen, PrintfTarget *target)
{
 if (padlen < 0)
  dopr_outchmulti(' ', -padlen, target);
}
