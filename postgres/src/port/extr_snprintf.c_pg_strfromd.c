
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* bufstart; char* bufptr; char* bufend; int nchars; int failed; int * stream; } ;
typedef TYPE_1__ PrintfTarget ;


 int Assert (int) ;
 int dopr_outch (int,TYPE_1__*) ;
 int dostr (char*,int,TYPE_1__*) ;
 scalar_t__ isinf (double) ;
 scalar_t__ isnan (double) ;
 scalar_t__ memcmp (double*,double const*,int) ;
 int sprintf (char*,char*,int,double) ;
 int strcpy (char*,char*) ;

int
pg_strfromd(char *str, size_t count, int precision, double value)
{
 PrintfTarget target;
 int signvalue = 0;
 int vallen;
 char fmt[8];
 char convert[64];


 Assert(count > 0);
 target.bufstart = target.bufptr = str;
 target.bufend = str + count - 1;
 target.stream = ((void*)0);
 target.nchars = 0;
 target.failed = 0;






 if (precision < 1)
  precision = 1;
 else if (precision > 32)
  precision = 32;





 if (isnan(value))
 {
  strcpy(convert, "NaN");
  vallen = 3;
 }
 else
 {
  static const double dzero = 0.0;

  if (value < 0.0 ||
   (value == 0.0 &&
    memcmp(&value, &dzero, sizeof(double)) != 0))
  {
   signvalue = '-';
   value = -value;
  }

  if (isinf(value))
  {
   strcpy(convert, "Infinity");
   vallen = 8;
  }
  else
  {
   fmt[0] = '%';
   fmt[1] = '.';
   fmt[2] = '*';
   fmt[3] = 'g';
   fmt[4] = '\0';
   vallen = sprintf(convert, fmt, precision, value);
   if (vallen < 0)
   {
    target.failed = 1;
    goto fail;
   }
  }
 }

 if (signvalue)
  dopr_outch(signvalue, &target);

 dostr(convert, vallen, &target);

fail:
 *(target.bufptr) = '\0';
 return target.failed ? -1 : (target.bufptr - target.bufstart
         + target.nchars);
}
