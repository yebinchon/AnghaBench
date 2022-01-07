
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PsqlScanState ;


 int OT_FILEPIPE ;
 int free (char*) ;
 char* psql_scan_slash_option (int ,int ,int *,int) ;

__attribute__((used)) static void
ignore_slash_filepipe(PsqlScanState scan_state)
{
 char *arg = psql_scan_slash_option(scan_state,
            OT_FILEPIPE, ((void*)0), 0);

 if (arg)
  free(arg);
}
