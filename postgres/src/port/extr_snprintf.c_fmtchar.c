
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PrintfTarget ;


 int compute_padlen (int,int,int) ;
 int dopr_outch (int,int *) ;
 int dopr_outchmulti (char,int,int *) ;
 int trailing_pad (int,int *) ;

__attribute__((used)) static void
fmtchar(int value, int leftjust, int minlen, PrintfTarget *target)
{
 int padlen;

 padlen = compute_padlen(minlen, 1, leftjust);

 if (padlen > 0)
 {
  dopr_outchmulti(' ', padlen, target);
  padlen = 0;
 }

 dopr_outch(value, target);

 trailing_pad(padlen, target);
}
