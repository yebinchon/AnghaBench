
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SPECIALS ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ strpbrk (char const*,int ) ;

__attribute__((used)) static int
nospecials(const char *p, size_t l)
{
 size_t upto = 0;

 do {
  if (strpbrk(p + upto, SPECIALS)) {

   return 0;
  }

  upto += strlen(p + upto) + 1;
 } while (upto <= l);


 return (1);
}
