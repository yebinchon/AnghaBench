
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int name; } ;
struct TYPE_10__ {TYPE_1__ md; } ;
struct TYPE_9__ {int namedRelList; } ;
typedef TYPE_2__ QueryEnvironment ;
typedef TYPE_3__* EphemeralNamedRelation ;


 int Assert (int ) ;
 int * get_ENR (TYPE_2__*,int ) ;
 int lappend (int ,TYPE_3__*) ;

void
register_ENR(QueryEnvironment *queryEnv, EphemeralNamedRelation enr)
{
 Assert(enr != ((void*)0));
 Assert(get_ENR(queryEnv, enr->md.name) == ((void*)0));

 queryEnv->namedRelList = lappend(queryEnv->namedRelList, enr);
}
