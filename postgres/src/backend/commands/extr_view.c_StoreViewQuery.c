
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Query ;
typedef int Oid ;


 int DefineViewRules (int ,int *,int) ;
 int * UpdateRangeTableOfViewParse (int ,int *) ;

void
StoreViewQuery(Oid viewOid, Query *viewParse, bool replace)
{




 viewParse = UpdateRangeTableOfViewParse(viewOid, viewParse);




 DefineViewRules(viewOid, viewParse, replace);
}
