
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double float8 ;
typedef int Selectivity ;
typedef int RegProcedure ;
typedef int PlannerInfo ;
typedef int Oid ;
typedef int List ;


 double DatumGetFloat8 (int ) ;
 int ERROR ;
 int Int32GetDatum (int) ;
 int ObjectIdGetDatum (int ) ;
 int OidFunctionCall4Coll (int ,int ,int ,int ,int ,int ) ;
 int PointerGetDatum (int *) ;
 int elog (int ,char*,double) ;
 int get_oprrest (int ) ;

Selectivity
restriction_selectivity(PlannerInfo *root,
      Oid operatorid,
      List *args,
      Oid inputcollid,
      int varRelid)
{
 RegProcedure oprrest = get_oprrest(operatorid);
 float8 result;





 if (!oprrest)
  return (Selectivity) 0.5;

 result = DatumGetFloat8(OidFunctionCall4Coll(oprrest,
             inputcollid,
             PointerGetDatum(root),
             ObjectIdGetDatum(operatorid),
             PointerGetDatum(args),
             Int32GetDatum(varRelid)));

 if (result < 0.0 || result > 1.0)
  elog(ERROR, "invalid restriction selectivity: %f", result);

 return (Selectivity) result;
}
