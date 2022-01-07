
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*) ;
 int stderr ;
 long strtoul (char const*,char**,int ) ;
 int tolower (char) ;

__attribute__((used)) static long to_kbytes(const char *string)
{
 int exp = 0;
 long result;
 char *end;

 result = strtoul(string, &end, 0);
 switch (tolower(*end)) {
  case 'k' :
  case '\0' : exp = 0; break;
  case 'm' : exp = 1; break;
  case 'g' : exp = 2; break;
  default: return 0;
 }

 if (*end)
  end++;

 if (*end) {
  fprintf(stderr, "garbage after end of number\n");
  return 0;
 }


 if (exp == 0)
  return result;
 return result * (2 << ((10 * exp) - 1));
}
