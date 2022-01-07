
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DecodeSpecial (scalar_t__,char*,int*) ;
 scalar_t__ DecodeTimezone (char*,int*) ;
 scalar_t__ MAXDATEFIELDS ;

 scalar_t__ isalpha (unsigned char) ;

__attribute__((used)) static int
DecodePosixTimezone(char *str, int *tzp)
{
 int val,
    tz;
 int type;
 char *cp;
 char delim;

 cp = str;
 while (*cp != '\0' && isalpha((unsigned char) *cp))
  cp++;

 if (DecodeTimezone(cp, &tz) != 0)
  return -1;

 delim = *cp;
 *cp = '\0';
 type = DecodeSpecial(MAXDATEFIELDS - 1, str, &val);
 *cp = delim;

 switch (type)
 {
  case 129:
  case 128:
   *tzp = -(val + tz);
   break;

  default:
   return -1;
 }

 return 0;
}
