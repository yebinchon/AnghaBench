
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int api_version; } ;
typedef TYPE_1__ Pg_finfo_record ;
typedef TYPE_1__* (* PGFInfoFunction ) () ;


 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERRCODE_UNDEFINED_FUNCTION ;
 int ERROR ;
 int elog (int ,char*,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,...) ;
 scalar_t__ lookup_external_function (void*,char*) ;
 int pfree (char*) ;
 char* psprintf (char*,char const*) ;
 TYPE_1__* stub1 () ;

const Pg_finfo_record *
fetch_finfo_record(void *filehandle, const char *funcname)
{
 char *infofuncname;
 PGFInfoFunction infofunc;
 const Pg_finfo_record *inforec;

 infofuncname = psprintf("pg_finfo_%s", funcname);


 infofunc = (PGFInfoFunction) lookup_external_function(filehandle,
                infofuncname);
 if (infofunc == ((void*)0))
 {
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_FUNCTION),
     errmsg("could not find function information for function \"%s\"",
      funcname),
     errhint("SQL-callable functions need an accompanying PG_FUNCTION_INFO_V1(funcname).")));
  return ((void*)0);
 }


 inforec = (*infofunc) ();


 if (inforec == ((void*)0))
  elog(ERROR, "null result from info function \"%s\"", infofuncname);
 switch (inforec->api_version)
 {
  case 1:

   break;
  default:
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
      errmsg("unrecognized API version %d reported by info function \"%s\"",
       inforec->api_version, infofuncname)));
   break;
 }

 pfree(infofuncname);
 return inforec;
}
