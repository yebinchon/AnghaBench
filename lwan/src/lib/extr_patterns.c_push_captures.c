
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct str_find {int dummy; } ;
struct match_state {int level; } ;


 int push_onecapture (struct match_state*,int,char const*,char const*,struct str_find*) ;

__attribute__((used)) static int
push_captures(struct match_state *ms, const char *s, const char *e,
    struct str_find *sm, size_t nsm)
{
 int i;
 int nlevels = (ms->level <= 0 && s) ? 1 : ms->level;

 if (nlevels > (int)nsm)
  nlevels = (int)nsm;
 for (i = 0; i < nlevels; i++)
  if (push_onecapture(ms, i, s, e, sm + i) == -1)
   break;


 return (nlevels);
}
