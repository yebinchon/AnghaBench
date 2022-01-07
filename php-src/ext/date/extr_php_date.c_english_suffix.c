
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timelib_sll ;



__attribute__((used)) static char *english_suffix(timelib_sll number)
{
 if (number >= 10 && number <= 19) {
  return "th";
 } else {
  switch (number % 10) {
   case 1: return "st";
   case 2: return "nd";
   case 3: return "rd";
  }
 }
 return "th";
}
