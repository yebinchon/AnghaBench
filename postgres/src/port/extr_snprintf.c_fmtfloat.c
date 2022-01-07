
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int failed; } ;
typedef TYPE_1__ PrintfTarget ;


 int Min (int,int) ;
 scalar_t__ adjust_sign (int,int,int*) ;
 int compute_padlen (int,int,int) ;
 int dopr_outchmulti (int ,int,TYPE_1__*) ;
 int dostr (char*,int,TYPE_1__*) ;
 scalar_t__ isinf (double) ;
 scalar_t__ isnan (double) ;
 int leading_pad (int,int,int*,TYPE_1__*) ;
 scalar_t__ memcmp (double*,double const*,int) ;
 int sprintf (char*,char*,double,...) ;
 int strcpy (char*,char*) ;
 char* strrchr (char*,char) ;
 int trailing_pad (int,TYPE_1__*) ;

__attribute__((used)) static void
fmtfloat(double value, char type, int forcesign, int leftjust,
   int minlen, int zpad, int precision, int pointflag,
   PrintfTarget *target)
{
 int signvalue = 0;
 int prec;
 int vallen;
 char fmt[8];
 char convert[1024];
 int zeropadlen = 0;
 int padlen;
 if (precision < 0)
  precision = 0;
 prec = Min(precision, 350);

 if (isnan(value))
 {
  strcpy(convert, "NaN");
  vallen = 3;

 }
 else
 {






  static const double dzero = 0.0;

  if (adjust_sign((value < 0.0 ||
       (value == 0.0 &&
        memcmp(&value, &dzero, sizeof(double)) != 0)),
      forcesign, &signvalue))
   value = -value;

  if (isinf(value))
  {
   strcpy(convert, "Infinity");
   vallen = 8;

  }
  else if (pointflag)
  {
   zeropadlen = precision - prec;
   fmt[0] = '%';
   fmt[1] = '.';
   fmt[2] = '*';
   fmt[3] = type;
   fmt[4] = '\0';
   vallen = sprintf(convert, fmt, prec, value);
  }
  else
  {
   fmt[0] = '%';
   fmt[1] = type;
   fmt[2] = '\0';
   vallen = sprintf(convert, fmt, value);
  }
  if (vallen < 0)
   goto fail;
 }

 padlen = compute_padlen(minlen, vallen + zeropadlen, leftjust);

 leading_pad(zpad, signvalue, &padlen, target);

 if (zeropadlen > 0)
 {

  char *epos = strrchr(convert, 'e');

  if (!epos)
   epos = strrchr(convert, 'E');
  if (epos)
  {

   dostr(convert, epos - convert, target);
   if (zeropadlen > 0)
    dopr_outchmulti('0', zeropadlen, target);
   dostr(epos, vallen - (epos - convert), target);
  }
  else
  {

   dostr(convert, vallen, target);
   if (zeropadlen > 0)
    dopr_outchmulti('0', zeropadlen, target);
  }
 }
 else
 {

  dostr(convert, vallen, target);
 }

 trailing_pad(padlen, target);
 return;

fail:
 target->failed = 1;
}
