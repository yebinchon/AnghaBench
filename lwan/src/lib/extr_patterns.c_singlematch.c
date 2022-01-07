
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct match_state {char const* src_end; } ;



 int match_class (int,int) ;
 int matchbracketclass (int,char const*,char const*) ;
 int uchar (char const) ;

__attribute__((used)) static int
singlematch(struct match_state *ms, const char *s, const char *p,
    const char *ep)
{
 if (s >= ms->src_end)
  return 0;
 else {
  int c = uchar(*s);
  switch (*p) {
  case '.':

   return (1);
  case 128:
   return match_class(c, uchar(*(p + 1)));
  case '[':
   return matchbracketclass(c, p, ep - 1);
  default:
   return (uchar(*p) == c);
  }
 }
}
