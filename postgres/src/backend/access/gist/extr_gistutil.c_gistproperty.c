
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16 ;
typedef int Oid ;
typedef int IndexAMProperty ;


 int AMPROCNUM ;


 int GIST_COMPRESS_PROC ;
 int GIST_DISTANCE_PROC ;
 int GIST_FETCH_PROC ;
 int Int16GetDatum (int ) ;
 int ObjectIdGetDatum (int ) ;
 int OidIsValid (int ) ;
 int SearchSysCacheExists4 (int ,int ,int ,int ,int ) ;
 int get_index_column_opclass (int ,int) ;
 int get_opclass_opfamily_and_input_type (int ,int *,int *) ;

bool
gistproperty(Oid index_oid, int attno,
    IndexAMProperty prop, const char *propname,
    bool *res, bool *isnull)
{
 Oid opclass,
    opfamily,
    opcintype;
 int16 procno;


 if (attno == 0)
  return 0;
 switch (prop)
 {
  case 129:
   procno = GIST_DISTANCE_PROC;
   break;
  case 128:
   procno = GIST_FETCH_PROC;
   break;
  default:
   return 0;
 }


 opclass = get_index_column_opclass(index_oid, attno);
 if (!OidIsValid(opclass))
 {
  *isnull = 1;
  return 1;
 }


 if (!get_opclass_opfamily_and_input_type(opclass, &opfamily, &opcintype))
 {
  *isnull = 1;
  return 1;
 }



 *res = SearchSysCacheExists4(AMPROCNUM,
         ObjectIdGetDatum(opfamily),
         ObjectIdGetDatum(opcintype),
         ObjectIdGetDatum(opcintype),
         Int16GetDatum(procno));





 if (prop == 128 && !*res)
 {
  *res = !SearchSysCacheExists4(AMPROCNUM,
           ObjectIdGetDatum(opfamily),
           ObjectIdGetDatum(opcintype),
           ObjectIdGetDatum(opcintype),
           Int16GetDatum(GIST_COMPRESS_PROC));
 }

 *isnull = 0;

 return 1;
}
