
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int values; } ;
typedef TYPE_1__ oidvector ;
typedef int Oid ;


 int CStringGetDatum (char const*) ;
 int ERRCODE_DUPLICATE_FUNCTION ;
 int ERROR ;
 int NIL ;
 int ObjectIdGetDatum (int ) ;
 int PROCNAMEARGSNSP ;
 int PointerGetDatum (TYPE_1__*) ;
 scalar_t__ SearchSysCacheExists3 (int ,int ,int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ,int ) ;
 int funcname_signature_string (char const*,int,int ,int ) ;
 int get_namespace_name (int ) ;

void
IsThereFunctionInNamespace(const char *proname, int pronargs,
         oidvector *proargtypes, Oid nspOid)
{

 if (SearchSysCacheExists3(PROCNAMEARGSNSP,
         CStringGetDatum(proname),
         PointerGetDatum(proargtypes),
         ObjectIdGetDatum(nspOid)))
  ereport(ERROR,
    (errcode(ERRCODE_DUPLICATE_FUNCTION),
     errmsg("function %s already exists in schema \"%s\"",
      funcname_signature_string(proname, pronargs,
              NIL, proargtypes->values),
      get_namespace_name(nspOid))));
}
