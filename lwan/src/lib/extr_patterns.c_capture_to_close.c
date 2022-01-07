
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct match_state {int level; TYPE_1__* capture; } ;
struct TYPE_2__ {scalar_t__ len; } ;


 scalar_t__ CAP_UNFINISHED ;
 int match_error (struct match_state*,char*) ;

__attribute__((used)) static int
capture_to_close(struct match_state *ms)
{
 int level = ms->level;
 for (level--; level >= 0; level--)
  if (ms->capture[level].len == CAP_UNFINISHED)
   return (level);
 return match_error(ms, "invalid pattern capture");
}
