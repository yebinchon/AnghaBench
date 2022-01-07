
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double float8 ;
typedef int SpecialJoinInfo ;
typedef int Selectivity ;
typedef int RegProcedure ;
typedef int PlannerInfo ;
typedef int Oid ;
typedef int List ;
typedef int JoinType ;


 double DatumGetFloat8 (int ) ;
 int ERROR ;
 int Int16GetDatum (int ) ;
 int ObjectIdGetDatum (int ) ;
 int OidFunctionCall5Coll (int ,int ,int ,int ,int ,int ,int ) ;
 int PointerGetDatum (int *) ;
 int elog (int ,char*,double) ;
 int get_oprjoin (int ) ;

Selectivity
join_selectivity(PlannerInfo *root,
     Oid operatorid,
     List *args,
     Oid inputcollid,
     JoinType jointype,
     SpecialJoinInfo *sjinfo)
{
 RegProcedure oprjoin = get_oprjoin(operatorid);
 float8 result;





 if (!oprjoin)
  return (Selectivity) 0.5;

 result = DatumGetFloat8(OidFunctionCall5Coll(oprjoin,
             inputcollid,
             PointerGetDatum(root),
             ObjectIdGetDatum(operatorid),
             PointerGetDatum(args),
             Int16GetDatum(jointype),
             PointerGetDatum(sjinfo)));

 if (result < 0.0 || result > 1.0)
  elog(ERROR, "invalid join selectivity: %f", result);

 return (Selectivity) result;
}
