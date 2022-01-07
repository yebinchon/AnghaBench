
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ceil (int ) ;
 int fabs (double) ;
 int log10 (int ) ;
 int snprintf (char*,int,char*,...) ;

char *sigfig(double val, int figs, char *buf, int len)
{
  char format[80];
  int digitsAfterDecimal = figs - (int)ceil(log10(fabs(val)));

  if (digitsAfterDecimal < 1)
    snprintf(format, 80, "%%.0f");
  else
    snprintf(format, 80, "%%.%df", digitsAfterDecimal);
  snprintf(buf, len, format, val);
  return buf;
}
