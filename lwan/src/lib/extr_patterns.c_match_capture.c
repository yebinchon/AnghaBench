
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct match_state {char const* src_end; TYPE_1__* capture; } ;
struct TYPE_2__ {int init; scalar_t__ len; } ;


 int check_capture (struct match_state*,int) ;
 scalar_t__ memcmp (int ,char const*,size_t) ;

__attribute__((used)) static const char *
match_capture(struct match_state *ms, const char *s, int l)
{
 size_t len;
 l = check_capture(ms, l);
 if (l == -1)
  return ((void*)0);
 len = (size_t)ms->capture[l].len;
 if ((size_t) (ms->src_end - s) >= len &&
     memcmp(ms->capture[l].init, s, len) == 0)
  return s + len;
 else
  return ((void*)0);
}
