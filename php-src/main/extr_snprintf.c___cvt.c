
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ malloc (size_t) ;
 char* strdup (char*) ;
 int strlcpy (char*,char*,size_t) ;
 char* zend_dtoa (double,int,int,int*,int*,char**) ;
 int zend_freedtoa (char*) ;

__attribute__((used)) static char * __cvt(double value, int ndigit, int *decpt, int *sign, int fmode, int pad)
{
 register char *s = ((void*)0);
 char *p, *rve, c;
 size_t siz;

 if (ndigit < 0) {
  siz = -ndigit + 1;
 } else {
  siz = ndigit + 1;
 }


 if (value == 0.0) {
  *decpt = 1 - fmode;
  *sign = 0;
  if ((rve = s = (char *)malloc(ndigit?siz:2)) == ((void*)0)) {
   return(((void*)0));
  }
  *rve++ = '0';
  *rve = '\0';
  if (!ndigit) {
   return(s);
  }
 } else {
  p = zend_dtoa(value, fmode + 2, ndigit, decpt, sign, &rve);
  if (*decpt == 9999) {

   *decpt = 0;
   c = *p;
   zend_freedtoa(p);
   return strdup((c == 'I' ? "INF" : "NAN"));
  }

  if (pad && fmode) {
   siz += *decpt;
  }
  if ((s = (char *)malloc(siz+1)) == ((void*)0)) {
   zend_freedtoa(p);
   return(((void*)0));
  }
  (void) strlcpy(s, p, siz);
  rve = s + (rve - p);
  zend_freedtoa(p);
 }


 if (pad) {
  siz -= rve - s;
  while (--siz) {
   *rve++ = '0';
  }
  *rve = '\0';
 }

 return(s);
}
