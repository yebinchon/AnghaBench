
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ParseState ;


 int name_matches_visible_ENR (int *,char const*) ;

bool
scanNameSpaceForENR(ParseState *pstate, const char *refname)
{
 return name_matches_visible_ENR(pstate, refname);
}
