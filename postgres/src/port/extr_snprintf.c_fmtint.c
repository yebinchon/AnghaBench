
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int convert ;
typedef int PrintfTarget ;


 int Max (int ,int) ;
 scalar_t__ adjust_sign (int,int,int*) ;
 int compute_padlen (int,int,int) ;
 int dopr_outchmulti (int ,int,int *) ;
 int dostr (char*,int,int *) ;
 int leading_pad (int,int,int*,int *) ;
 int trailing_pad (int,int *) ;

__attribute__((used)) static void
fmtint(long long value, char type, int forcesign, int leftjust,
    int minlen, int zpad, int precision, int pointflag,
    PrintfTarget *target)
{
 unsigned long long base;
 unsigned long long uvalue;
 int dosign;
 const char *cvt = "0123456789abcdef";
 int signvalue = 0;
 char convert[64];
 int vallen = 0;
 int padlen;
 int zeropad;

 switch (type)
 {
  case 'd':
  case 'i':
   base = 10;
   dosign = 1;
   break;
  case 'o':
   base = 8;
   dosign = 0;
   break;
  case 'u':
   base = 10;
   dosign = 0;
   break;
  case 'x':
   base = 16;
   dosign = 0;
   break;
  case 'X':
   cvt = "0123456789ABCDEF";
   base = 16;
   dosign = 0;
   break;
  default:
   return;
 }







 if (dosign && adjust_sign((value < 0), forcesign, &signvalue))
  uvalue = -(unsigned long long) value;
 else
  uvalue = (unsigned long long) value;
 if (value == 0 && pointflag && precision == 0)
  vallen = 0;
 else
 {

  do
  {
   convert[sizeof(convert) - (++vallen)] = cvt[uvalue % base];
   uvalue = uvalue / base;
  } while (uvalue);
 }

 zeropad = Max(0, precision - vallen);

 padlen = compute_padlen(minlen, vallen + zeropad, leftjust);

 leading_pad(zpad, signvalue, &padlen, target);

 if (zeropad > 0)
  dopr_outchmulti('0', zeropad, target);

 dostr(convert + sizeof(convert) - vallen, vallen, target);

 trailing_pad(padlen, target);
}
