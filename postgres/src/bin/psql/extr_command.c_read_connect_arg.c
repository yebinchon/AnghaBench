
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PsqlScanState ;


 int OT_SQLIDHACK ;
 int free (char*) ;
 char* psql_scan_slash_option (int ,int ,char*,int) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static char *
read_connect_arg(PsqlScanState scan_state)
{
 char *result;
 char quote;
 result = psql_scan_slash_option(scan_state, OT_SQLIDHACK, &quote, 1);

 if (!result)
  return ((void*)0);

 if (quote)
  return result;

 if (*result == '\0' || strcmp(result, "-") == 0)
 {
  free(result);
  return ((void*)0);
 }

 return result;
}
