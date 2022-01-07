
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cfgname; int cfgnamespace; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef scalar_t__ GucSource ;
typedef TYPE_1__* Form_pg_ts_config ;


 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 scalar_t__ InvalidOid ;
 scalar_t__ IsTransactionState () ;
 scalar_t__ MyDatabaseId ;
 int NOTICE ;
 int NameStr (int ) ;
 int ObjectIdGetDatum (int ) ;
 int OidIsValid (int ) ;
 scalar_t__ PGC_S_TEST ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int TSCONFIGOID ;
 int elog (int ,char*,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char*) ;
 int free (char*) ;
 int get_namespace_name (int ) ;
 int get_ts_config_oid (int ,int) ;
 int pfree (char*) ;
 char* quote_qualified_identifier (int ,int ) ;
 char* strdup (char*) ;
 int stringToQualifiedNameList (char*) ;

bool
check_TSCurrentConfig(char **newval, void **extra, GucSource source)
{





 if (IsTransactionState() && MyDatabaseId != InvalidOid)
 {
  Oid cfgId;
  HeapTuple tuple;
  Form_pg_ts_config cfg;
  char *buf;

  cfgId = get_ts_config_oid(stringToQualifiedNameList(*newval), 1);





  if (!OidIsValid(cfgId))
  {
   if (source == PGC_S_TEST)
   {
    ereport(NOTICE,
      (errcode(ERRCODE_UNDEFINED_OBJECT),
       errmsg("text search configuration \"%s\" does not exist", *newval)));
    return 1;
   }
   else
    return 0;
  }





  tuple = SearchSysCache1(TSCONFIGOID, ObjectIdGetDatum(cfgId));
  if (!HeapTupleIsValid(tuple))
   elog(ERROR, "cache lookup failed for text search configuration %u",
     cfgId);
  cfg = (Form_pg_ts_config) GETSTRUCT(tuple);

  buf = quote_qualified_identifier(get_namespace_name(cfg->cfgnamespace),
           NameStr(cfg->cfgname));

  ReleaseSysCache(tuple);


  free(*newval);
  *newval = strdup(buf);
  pfree(buf);
  if (!*newval)
   return 0;
 }

 return 1;
}
