
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CAL_JEWISH_ADD_ALAFIM ;
 int CAL_JEWISH_ADD_ALAFIM_GERESH ;
 int CAL_JEWISH_ADD_GERESHAYIM ;
 char* alef_bet ;
 char* estrndup (char*,int) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static char *heb_number_to_chars(int n, int fl, char **ret)
{
 char *p, old[18], *endofalafim;

 p = endofalafim = old;




 if (n > 9999 || n < 1) {
  *ret = ((void*)0);
  return ((void*)0);
 }


 if (n / 1000) {
  *p = alef_bet[n / 1000];
  p++;

  if (CAL_JEWISH_ADD_ALAFIM_GERESH & fl) {
   *p = '\'';
   p++;
  }
  if (CAL_JEWISH_ADD_ALAFIM & fl) {

   strcpy(p, " \xE0\xEC\xF4\xE9\xED ");
   p += 7;
  }

  endofalafim = p;
  n = n % 1000;
 }


 while (n >= 400) {
  *p = alef_bet[22];
  p++;
  n -= 400;
 }


 if (n >= 100) {
  *p = alef_bet[18 + n / 100];
  p++;
  n = n % 100;
 }


 if (n == 15 || n == 16) {
  *p = alef_bet[9];
  p++;
  *p = alef_bet[n - 9];
  p++;
 } else {

  if (n >= 10) {
   *p = alef_bet[9 + n / 10];
   p++;
   n = n % 10;
  }


  if (n > 0) {
   *p = alef_bet[n];
   p++;
  }
 }

 if (CAL_JEWISH_ADD_GERESHAYIM & fl) {
  switch (p - endofalafim) {
  case 0:
   break;
  case 1:
   *p = '\'';
   p++;
   break;
  default:
   *(p) = *(p - 1);
   *(p - 1) = '"';
   p++;
  }
 }

 *p = '\0';
 *ret = estrndup(old, (p - old) + 1);
 p = *ret;
 return p;
}
