
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* altarg ;
 char* argbase ;
 int slrflag ;
 char* stringbase ;

__attribute__((used)) static const char *
slurpstring(void)
{
 int got_one = 0;
 register char *sb = stringbase;
 register char *ap = argbase;
 char *tmp = argbase;

 if (*sb == '!' || *sb == '$') {
  switch (slrflag) {
   case 0:
    slrflag++;
    stringbase++;
    return ((*sb == '!') ? "!" : "$");

   case 1:
    slrflag++;
    altarg = stringbase;
    break;
   default:
    break;
  }
 }

S0:
 switch (*sb) {

 case '\0':
  goto OUT1;

 case ' ':
 case '\t':
  sb++; goto S0;

 default:
  switch (slrflag) {
   case 0:
    slrflag++;
    break;
   case 1:
    slrflag++;
    altarg = sb;
    break;
   default:
    break;
  }
  goto S1;
 }

S1:
 switch (*sb) {

 case ' ':
 case '\t':
 case '\0':
  goto OUT1;

 case '\\':
  sb++; goto S2;

 case '"':
  sb++; goto S3;

 default:
  *ap++ = *sb++;
  got_one = 1;
  goto S1;
 }

S2:
 switch (*sb) {

 case '\0':
  goto OUT1;

 default:
  *ap++ = *sb++;
  got_one = 1;
  goto S1;
 }

S3:
 switch (*sb) {

 case '\0':
  goto OUT1;

 case '"':
  sb++; goto S1;

 default:
  *ap++ = *sb++;
  got_one = 1;
  goto S3;
 }

OUT1:
 if (got_one)
  *ap++ = '\0';
 argbase = ap;
 stringbase = sb;
 if (got_one) {
  return(tmp);
 }
 switch (slrflag) {
  case 0:
   slrflag++;
   break;
  case 1:
   slrflag++;
   altarg = (char *) 0;
   break;
  default:
   break;
 }
 return((char *)0);
}
