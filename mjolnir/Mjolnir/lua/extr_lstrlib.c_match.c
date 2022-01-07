
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {char const* p_end; char const* src_end; char const* src_init; int matchdepth; int L; } ;
typedef TYPE_1__ MatchState ;


 int CAP_POSITION ;
 int CAP_UNFINISHED ;

 char* classend (TYPE_1__*,char const*) ;
 char* end_capture (TYPE_1__*,char const*,char const*) ;
 int luaL_error (int ,char*) ;
 char* match_capture (TYPE_1__*,char const*,int ) ;
 char* matchbalance (TYPE_1__*,char const*,char const*) ;
 int matchbracketclass (int ,char const*,char const*) ;
 char* max_expand (TYPE_1__*,char const*,char const*,char const*) ;
 char* min_expand (TYPE_1__*,char const*,char const*,char const*) ;
 int singlematch (TYPE_1__*,char const*,char const*,char const*) ;
 char* start_capture (TYPE_1__*,char const*,char const*,int ) ;
 int uchar (char const) ;

__attribute__((used)) static const char *match (MatchState *ms, const char *s, const char *p) {
  if (ms->matchdepth-- == 0)
    luaL_error(ms->L, "pattern too complex");
  init:
  if (p != ms->p_end) {
    switch (*p) {
      case '(': {
        if (*(p + 1) == ')')
          s = start_capture(ms, s, p + 2, CAP_POSITION);
        else
          s = start_capture(ms, s, p + 1, CAP_UNFINISHED);
        break;
      }
      case ')': {
        s = end_capture(ms, s, p + 1);
        break;
      }
      case '$': {
        if ((p + 1) != ms->p_end)
          goto dflt;
        s = (s == ms->src_end) ? s : ((void*)0);
        break;
      }
      case 128: {
        switch (*(p + 1)) {
          case 'b': {
            s = matchbalance(ms, s, p + 2);
            if (s != ((void*)0)) {
              p += 4; goto init;
            }
            break;
          }
          case 'f': {
            const char *ep; char previous;
            p += 2;
            if (*p != '[')
              luaL_error(ms->L, "missing '[' after '%%f' in pattern");
            ep = classend(ms, p);
            previous = (s == ms->src_init) ? '\0' : *(s - 1);
            if (!matchbracketclass(uchar(previous), p, ep - 1) &&
               matchbracketclass(uchar(*s), p, ep - 1)) {
              p = ep; goto init;
            }
            s = ((void*)0);
            break;
          }
          case '0': case '1': case '2': case '3':
          case '4': case '5': case '6': case '7':
          case '8': case '9': {
            s = match_capture(ms, s, uchar(*(p + 1)));
            if (s != ((void*)0)) {
              p += 2; goto init;
            }
            break;
          }
          default: goto dflt;
        }
        break;
      }
      default: dflt: {
        const char *ep = classend(ms, p);

        if (!singlematch(ms, s, p, ep)) {
          if (*ep == '*' || *ep == '?' || *ep == '-') {
            p = ep + 1; goto init;
          }
          else
            s = ((void*)0);
        }
        else {
          switch (*ep) {
            case '?': {
              const char *res;
              if ((res = match(ms, s + 1, ep + 1)) != ((void*)0))
                s = res;
              else {
                p = ep + 1; goto init;
              }
              break;
            }
            case '+':
              s++;

            case '*':
              s = max_expand(ms, s, p, ep);
              break;
            case '-':
              s = min_expand(ms, s, p, ep);
              break;
            default:
              s++; p = ep; goto init;
          }
        }
        break;
      }
    }
  }
  ms->matchdepth++;
  return s;
}
