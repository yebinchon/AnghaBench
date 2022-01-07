
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct match_state {TYPE_1__* capture; } ;
struct TYPE_2__ {char const* len; int init; } ;


 char const* CAP_UNFINISHED ;
 int capture_to_close (struct match_state*) ;
 char* match (struct match_state*,char const*,char const*) ;

__attribute__((used)) static const char *
end_capture(struct match_state *ms, const char *s, const char *p)
{
 int l = capture_to_close(ms);
 const char *res;
 if (l == -1)
  return ((void*)0);

 ms->capture[l].len = s - ms->capture[l].init;

 if ((res = match(ms, s, p)) == ((void*)0))
  ms->capture[l].len = CAP_UNFINISHED;
 return res;
}
