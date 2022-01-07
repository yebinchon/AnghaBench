
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SV ;
typedef int Oid ;
typedef int Datum ;


 int CStringGetDatum (char*) ;
 int DirectFunctionCall1 (int ,int ) ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 int InvalidOid ;
 int OidIsValid (int ) ;
 char* OidOutputFunctionCall (int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char*) ;
 int getTypeOutputInfo (int ,int *,int*) ;
 int plperl_sv_to_datum (int *,int ,int,int *,int *,int ,int*) ;
 int regtypein ;

char *
plperl_sv_to_literal(SV *sv, char *fqtypename)
{
 Datum str = CStringGetDatum(fqtypename);
 Oid typid = DirectFunctionCall1(regtypein, str);
 Oid typoutput;
 Datum datum;
 bool typisvarlena,
    isnull;

 if (!OidIsValid(typid))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("lookup failed for type %s", fqtypename)));

 datum = plperl_sv_to_datum(sv,
          typid, -1,
          ((void*)0), ((void*)0), InvalidOid,
          &isnull);

 if (isnull)
  return ((void*)0);

 getTypeOutputInfo(typid,
       &typoutput, &typisvarlena);

 return OidOutputFunctionCall(typoutput, datum);
}
