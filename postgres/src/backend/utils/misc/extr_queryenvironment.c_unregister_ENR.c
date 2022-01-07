
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int namedRelList; } ;
typedef TYPE_1__ QueryEnvironment ;
typedef scalar_t__ EphemeralNamedRelation ;


 scalar_t__ get_ENR (TYPE_1__*,char const*) ;
 int list_delete (int ,scalar_t__) ;

void
unregister_ENR(QueryEnvironment *queryEnv, const char *name)
{
 EphemeralNamedRelation match;

 match = get_ENR(queryEnv, name);
 if (match)
  queryEnv->namedRelList = list_delete(queryEnv->namedRelList, match);
}
