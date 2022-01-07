
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int ERROR ;
 int InvalidOid ;
 scalar_t__ OidIsValid (int ) ;
 int * TSConfigCacheHash ;
 char* TSCurrentConfig ;
 int TSCurrentConfigCache ;
 int elog (int ,char*) ;
 int get_ts_config_oid (int ,int) ;
 int init_ts_config_cache () ;
 int stringToQualifiedNameList (char*) ;

Oid
getTSCurrentConfig(bool emitError)
{

 if (OidIsValid(TSCurrentConfigCache))
  return TSCurrentConfigCache;


 if (TSCurrentConfig == ((void*)0) || *TSCurrentConfig == '\0')
 {
  if (emitError)
   elog(ERROR, "text search configuration isn't set");
  else
   return InvalidOid;
 }

 if (TSConfigCacheHash == ((void*)0))
 {

  init_ts_config_cache();
 }


 TSCurrentConfigCache =
  get_ts_config_oid(stringToQualifiedNameList(TSCurrentConfig),
        !emitError);

 return TSCurrentConfigCache;
}
