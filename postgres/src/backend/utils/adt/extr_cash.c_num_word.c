
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Cash ;


 int sprintf (char*,char*,char const* const,...) ;

__attribute__((used)) static const char *
num_word(Cash value)
{
 static char buf[128];
 static const char *const small[] = {
  "zero", "one", "two", "three", "four", "five", "six", "seven",
  "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen",
  "fifteen", "sixteen", "seventeen", "eighteen", "nineteen", "twenty",
  "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"
 };
 const char *const *big = small + 18;
 int tu = value % 100;


 if (value <= 20)
  return small[value];


 if (!tu)
 {
  sprintf(buf, "%s hundred", small[value / 100]);
  return buf;
 }


 if (value > 99)
 {

  if (value % 10 == 0 && tu > 10)
   sprintf(buf, "%s hundred %s",
     small[value / 100], big[tu / 10]);
  else if (tu < 20)
   sprintf(buf, "%s hundred and %s",
     small[value / 100], small[tu]);
  else
   sprintf(buf, "%s hundred %s %s",
     small[value / 100], big[tu / 10], small[tu % 10]);
 }
 else
 {

  if (value % 10 == 0 && tu > 10)
   sprintf(buf, "%s", big[tu / 10]);
  else if (tu < 20)
   sprintf(buf, "%s", small[tu]);
  else
   sprintf(buf, "%s %s", big[tu / 10], small[tu % 10]);
 }

 return buf;
}
