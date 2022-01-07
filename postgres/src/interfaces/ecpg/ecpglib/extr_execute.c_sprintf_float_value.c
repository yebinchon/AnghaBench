
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isinf (float) ;
 scalar_t__ isnan (float) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static void
sprintf_float_value(char *ptr, float value, const char *delim)
{
 if (isnan(value))
  sprintf(ptr, "%s%s", "NaN", delim);
 else if (isinf(value))
 {
  if (value < 0)
   sprintf(ptr, "%s%s", "-Infinity", delim);
  else
   sprintf(ptr, "%s%s", "Infinity", delim);
 }
 else
  sprintf(ptr, "%.15g%s", value, delim);
}
