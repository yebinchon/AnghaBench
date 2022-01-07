
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,char const*,char const*) ;

__attribute__((used)) static void
checkTimezoneIsUsedForCast(bool useTz, const char *type1, const char *type2)
{
 if (!useTz)
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("cannot convert value from %s to %s without timezone usage",
      type1, type2),
     errhint("Use *_tz() function for timezone support.")));
}
