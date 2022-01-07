
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PrintfTarget ;


 int compute_padlen (int,int,int) ;
 int dopr_outchmulti (char,int,int *) ;
 int dostr (char const*,int,int *) ;
 int strlen (char const*) ;
 int strnlen (char const*,int) ;
 int trailing_pad (int,int *) ;

__attribute__((used)) static void
fmtstr(const char *value, int leftjust, int minlen, int maxwidth,
    int pointflag, PrintfTarget *target)
{
 int padlen,
    vallen;





 if (pointflag)
  vallen = strnlen(value, maxwidth);
 else
  vallen = strlen(value);

 padlen = compute_padlen(minlen, vallen, leftjust);

 if (padlen > 0)
 {
  dopr_outchmulti(' ', padlen, target);
  padlen = 0;
 }

 dostr(value, vallen, target);

 trailing_pad(padlen, target);
}
