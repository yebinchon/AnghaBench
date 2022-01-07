
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PsqlScanState ;


 int OT_NORMAL ;
 int free (char*) ;
 char* psql_scan_slash_option (int ,int ,int *,int) ;

__attribute__((used)) static void
ignore_slash_options(PsqlScanState scan_state)
{
 char *arg;

 while ((arg = psql_scan_slash_option(scan_state,
           OT_NORMAL, ((void*)0), 0)) != ((void*)0))
  free(arg);
}
