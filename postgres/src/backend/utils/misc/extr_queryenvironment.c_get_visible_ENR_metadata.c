
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int md; } ;
typedef int QueryEnvironment ;
typedef int * EphemeralNamedRelationMetadata ;
typedef TYPE_1__* EphemeralNamedRelation ;


 int Assert (int ) ;
 TYPE_1__* get_ENR (int *,char const*) ;

EphemeralNamedRelationMetadata
get_visible_ENR_metadata(QueryEnvironment *queryEnv, const char *refname)
{
 EphemeralNamedRelation enr;

 Assert(refname != ((void*)0));

 if (queryEnv == ((void*)0))
  return ((void*)0);

 enr = get_ENR(queryEnv, refname);

 if (enr)
  return &(enr->md);

 return ((void*)0);
}
