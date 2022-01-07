
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int int16 ;
struct TYPE_2__ {int typbyval; char typalign; char typdelim; int typsend; int typreceive; int typoutput; int typinput; int typlen; } ;
typedef int Oid ;
typedef int IOFuncSelector ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_type ;


 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;




 scalar_t__ IsBootstrapProcessingMode () ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int TYPEOID ;
 int boot_get_type_io_data (int ,int *,int*,char*,char*,int *,int *,int *) ;
 int elog (int ,char*,...) ;
 int getTypeIOParam (int ) ;

void
get_type_io_data(Oid typid,
     IOFuncSelector which_func,
     int16 *typlen,
     bool *typbyval,
     char *typalign,
     char *typdelim,
     Oid *typioparam,
     Oid *func)
{
 HeapTuple typeTuple;
 Form_pg_type typeStruct;





 if (IsBootstrapProcessingMode())
 {
  Oid typinput;
  Oid typoutput;

  boot_get_type_io_data(typid,
         typlen,
         typbyval,
         typalign,
         typdelim,
         typioparam,
         &typinput,
         &typoutput);
  switch (which_func)
  {
   case 131:
    *func = typinput;
    break;
   case 130:
    *func = typoutput;
    break;
   default:
    elog(ERROR, "binary I/O not supported during bootstrap");
    break;
  }
  return;
 }

 typeTuple = SearchSysCache1(TYPEOID, ObjectIdGetDatum(typid));
 if (!HeapTupleIsValid(typeTuple))
  elog(ERROR, "cache lookup failed for type %u", typid);
 typeStruct = (Form_pg_type) GETSTRUCT(typeTuple);

 *typlen = typeStruct->typlen;
 *typbyval = typeStruct->typbyval;
 *typalign = typeStruct->typalign;
 *typdelim = typeStruct->typdelim;
 *typioparam = getTypeIOParam(typeTuple);
 switch (which_func)
 {
  case 131:
   *func = typeStruct->typinput;
   break;
  case 130:
   *func = typeStruct->typoutput;
   break;
  case 129:
   *func = typeStruct->typreceive;
   break;
  case 128:
   *func = typeStruct->typsend;
   break;
 }
 ReleaseSysCache(typeTuple);
}
