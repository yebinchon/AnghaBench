
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Query ;
typedef int Oid ;


 int CMD_SELECT ;
 int DefineQueryRewrite (int ,int ,int *,int ,int,int,int ) ;
 int ViewSelectRuleName ;
 int list_make1 (int *) ;
 int pstrdup (int ) ;

__attribute__((used)) static void
DefineViewRules(Oid viewOid, Query *viewParse, bool replace)
{




 DefineQueryRewrite(pstrdup(ViewSelectRuleName),
        viewOid,
        ((void*)0),
        CMD_SELECT,
        1,
        replace,
        list_make1(viewParse));




}
