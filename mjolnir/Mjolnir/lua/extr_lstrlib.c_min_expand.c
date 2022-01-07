
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MatchState ;


 char* match (int *,char const*,char const*) ;
 scalar_t__ singlematch (int *,char const*,char const*,char const*) ;

__attribute__((used)) static const char *min_expand (MatchState *ms, const char *s,
                                 const char *p, const char *ep) {
  for (;;) {
    const char *res = match(ms, s, ep+1);
    if (res != ((void*)0))
      return res;
    else if (singlematch(ms, s, p, ep))
      s++;
    else return ((void*)0);
  }
}
