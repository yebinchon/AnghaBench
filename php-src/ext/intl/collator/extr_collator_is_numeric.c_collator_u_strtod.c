
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int UChar ;


 int ALLOCA_FLAG (int ) ;
 scalar_t__ do_alloca (size_t,int ) ;
 int free_alloca (char*,int ) ;
 scalar_t__ u_isspace (int) ;
 int use_heap ;
 double zend_strtod (char*,int *) ;

__attribute__((used)) static double collator_u_strtod(const UChar *nptr, UChar **endptr)
{
 const UChar *u = nptr, *nstart;
 UChar c = *u;
 int any = 0;

 while (u_isspace(c)) {
  c = *++u;
 }
 nstart = u;

 if (c == 0x2D || c == 0x2B ) {
  c = *++u;
 }

 while (c >= 0x30 && c <= 0x39 ) {
  any = 1;
  c = *++u;
 }

 if (c == 0x2E ) {
  c = *++u;
  while (c >= 0x30 && c <= 0x39 ) {
   any = 1;
   c = *++u;
  }
 }

 if ((c == 0x65 || c == 0x45 ) && any) {
  const UChar *e = u;
  int any_exp = 0;

  c = *++u;
  if (c == 0x2D || c == 0x2B ) {
   c = *++u;
  }

  while (c >= 0x30 && c <= 0x39 ) {
   any_exp = 1;
   c = *++u;
  }

  if (!any_exp) {
   u = e;
  }
 }

 if (any) {
  char buf[64], *numbuf, *bufpos;
  size_t length = u - nstart;
  double value;
  ALLOCA_FLAG(use_heap);

  if (length < sizeof(buf)) {
   numbuf = buf;
  } else {
   numbuf = (char *) do_alloca(length + 1, use_heap);
  }

  bufpos = numbuf;

  while (nstart < u) {
   *bufpos++ = (char) *nstart++;
  }

  *bufpos = '\0';
  value = zend_strtod(numbuf, ((void*)0));

  if (numbuf != buf) {
   free_alloca(numbuf, use_heap);
  }

  if (endptr != ((void*)0)) {
   *endptr = (UChar *)u;
  }

  return value;
 }

 if (endptr != ((void*)0)) {
  *endptr = (UChar *)nptr;
 }

 return 0;
}
