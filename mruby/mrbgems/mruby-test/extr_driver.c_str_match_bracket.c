
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ mrb_bool ;


 scalar_t__ CHAR_CMP (char const,char const) ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 char* UNESCAPE (char const*,char const*) ;

__attribute__((used)) static const char *
str_match_bracket(const char *p, const char *pat_end,
                  const char *s, const char *str_end)
{
  mrb_bool ok = FALSE, negated = FALSE;

  if (p == pat_end) return ((void*)0);
  if (*p == '!' || *p == '^') {
    negated = TRUE;
    ++p;
  }

  while (*p != ']') {
    const char *t1 = p;
    if ((t1 = UNESCAPE(t1, pat_end)) == pat_end) return ((void*)0);
    if ((p = t1 + 1) == pat_end) return ((void*)0);
    if (p[0] == '-' && p[1] != ']') {
      const char *t2 = p + 1;
      if ((t2 = UNESCAPE(t2, pat_end)) == pat_end) return ((void*)0);
      p = t2 + 1;
      if (!ok && CHAR_CMP(*t1, *s) <= 0 && CHAR_CMP(*s, *t2) <= 0) ok = TRUE;
    }
    else {
      if (!ok && CHAR_CMP(*t1, *s) == 0) ok = TRUE;
    }
  }

  return ok == negated ? ((void*)0) : p + 1;
}
