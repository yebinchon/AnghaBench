
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char EOS ;
 int FNM_CASEFOLD ;
 int FNM_NOESCAPE ;
 char tolower (unsigned char) ;

__attribute__((used)) static const char *
rangematch(const char *pattern, char test, int flags)
{
 int negate, ok;
 char c, c2;
 if ( (negate = (*pattern == '!' || *pattern == '^')) )
  ++pattern;

 if (flags & FNM_CASEFOLD)
  test = tolower((unsigned char)test);

 for (ok = 0; (c = *pattern++) != ']';) {
  if (c == '\\' && !(flags & FNM_NOESCAPE))
   c = *pattern++;
  if (c == EOS)
   return (((void*)0));

  if (flags & FNM_CASEFOLD)
   c = tolower((unsigned char)c);

  if (*pattern == '-'
      && (c2 = *(pattern+1)) != EOS && c2 != ']') {
   pattern += 2;
   if (c2 == '\\' && !(flags & FNM_NOESCAPE))
    c2 = *pattern++;
   if (c2 == EOS)
    return (((void*)0));

   if (flags & FNM_CASEFOLD)
    c2 = tolower((unsigned char)c2);

   if ((unsigned char)c <= (unsigned char)test &&
       (unsigned char)test <= (unsigned char)c2)
    ok = 1;
  } else if (c == test)
   ok = 1;
 }
 return (ok == negate ? ((void*)0) : pattern);
}
