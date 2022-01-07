
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int relowner; } ;
struct TYPE_5__ {scalar_t__ constr_queryno; } ;
typedef int * SPIPlanPtr ;
typedef int Relation ;
typedef TYPE_1__ RI_QueryKey ;
typedef int Oid ;


 int ERROR ;
 int GetUserIdAndSecContext (int *,int*) ;
 scalar_t__ RI_PLAN_LAST_ON_PK ;
 TYPE_4__* RelationGetForm (int ) ;
 int SECURITY_LOCAL_USERID_CHANGE ;
 int SECURITY_NOFORCE_RLS ;
 int SPI_keepplan (int *) ;
 int * SPI_prepare (char const*,int,int *) ;
 int SPI_result ;
 int SPI_result_code_string (int ) ;
 int SetUserIdAndSecContext (int ,int) ;
 int elog (int ,char*,int ,char const*) ;
 int ri_HashPreparedPlan (TYPE_1__*,int *) ;

__attribute__((used)) static SPIPlanPtr
ri_PlanCheck(const char *querystr, int nargs, Oid *argtypes,
    RI_QueryKey *qkey, Relation fk_rel, Relation pk_rel)
{
 SPIPlanPtr qplan;
 Relation query_rel;
 Oid save_userid;
 int save_sec_context;





 if (qkey->constr_queryno <= RI_PLAN_LAST_ON_PK)
  query_rel = pk_rel;
 else
  query_rel = fk_rel;


 GetUserIdAndSecContext(&save_userid, &save_sec_context);
 SetUserIdAndSecContext(RelationGetForm(query_rel)->relowner,
         save_sec_context | SECURITY_LOCAL_USERID_CHANGE |
         SECURITY_NOFORCE_RLS);


 qplan = SPI_prepare(querystr, nargs, argtypes);

 if (qplan == ((void*)0))
  elog(ERROR, "SPI_prepare returned %s for %s", SPI_result_code_string(SPI_result), querystr);


 SetUserIdAndSecContext(save_userid, save_sec_context);


 SPI_keepplan(qplan);
 ri_HashPreparedPlan(qkey, qplan);

 return qplan;
}
