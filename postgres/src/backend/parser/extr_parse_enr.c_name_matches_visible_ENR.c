
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int p_queryEnv; } ;
typedef TYPE_1__ ParseState ;


 int * get_visible_ENR_metadata (int ,char const*) ;

bool
name_matches_visible_ENR(ParseState *pstate, const char *refname)
{
 return (get_visible_ENR_metadata(pstate->p_queryEnv, refname) != ((void*)0));
}
