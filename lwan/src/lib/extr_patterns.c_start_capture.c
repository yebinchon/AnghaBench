
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct match_state {int level; int maxcaptures; TYPE_1__* capture; } ;
struct TYPE_2__ {char const* init; int len; } ;


 char* match (struct match_state*,char const*,char const*) ;
 int match_error (struct match_state*,char*) ;

__attribute__((used)) static const char *
start_capture(struct match_state *ms, const char *s, const char *p, int what)
{
 const char *res;

 int level = ms->level;
 if (level >= ms->maxcaptures) {
  match_error(ms, "too many captures");
  return (((void*)0));
 }
 ms->capture[level].init = s;
 ms->capture[level].len = what;
 ms->level = level + 1;

 if ((res = match(ms, s, p)) == ((void*)0))
  ms->level--;
 return res;
}
