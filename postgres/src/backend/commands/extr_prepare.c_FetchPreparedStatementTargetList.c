
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int plansource; } ;
typedef TYPE_1__ PreparedStatement ;
typedef int List ;


 int * CachedPlanGetTargetList (int ,int *) ;
 int * copyObject (int *) ;

List *
FetchPreparedStatementTargetList(PreparedStatement *stmt)
{
 List *tlist;


 tlist = CachedPlanGetTargetList(stmt->plansource, ((void*)0));


 return copyObject(tlist);
}
