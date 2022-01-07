
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Oid ;


 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 scalar_t__ GetNextTempTableSpace () ;
 scalar_t__ InvalidOid ;
 scalar_t__ MyDatabaseTableSpace ;
 int PrepareTempTablespaces () ;
 char RELPERSISTENCE_TEMP ;
 char* default_tablespace ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 scalar_t__ get_tablespace_oid (char*,int) ;

Oid
GetDefaultTablespace(char relpersistence, bool partitioned)
{
 Oid result;


 if (relpersistence == RELPERSISTENCE_TEMP)
 {
  PrepareTempTablespaces();
  return GetNextTempTableSpace();
 }


 if (default_tablespace == ((void*)0) || default_tablespace[0] == '\0')
  return InvalidOid;
 result = get_tablespace_oid(default_tablespace, 1);







 if (result == MyDatabaseTableSpace)
 {
  if (partitioned)
   ereport(ERROR,
     (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("cannot specify default tablespace for partitioned relations")));
  result = InvalidOid;
 }
 return result;
}
