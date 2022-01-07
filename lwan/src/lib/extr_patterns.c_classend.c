
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct match_state {char const* p_end; } ;



 int match_error (struct match_state*,char*) ;

__attribute__((used)) static const char *
classend(struct match_state *ms, const char *p)
{
 switch (*p++) {
 case 128:
  if (p == ms->p_end)
   match_error(ms,
       "malformed pattern (ends with '%')");
  return p + 1;
 case '[':
  if (*p == '^')
   p++;
  do {

   if (p == ms->p_end) {
    match_error(ms,
        "malformed pattern (missing ']')");
    break;
   }
   if (*(p++) == 128 && p < ms->p_end) {

    p++;
   }
  } while (*p != ']');
  return p + 1;
 default:
  return p;
 }
}
