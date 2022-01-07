
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PsqlScanState ;


 int OT_WHOLE_LINE ;
 int free (char*) ;
 char* psql_scan_slash_option (int ,int ,int *,int) ;

__attribute__((used)) static void
ignore_slash_whole_line(PsqlScanState scan_state)
{
 char *arg = psql_scan_slash_option(scan_state,
            OT_WHOLE_LINE, ((void*)0), 0);

 if (arg)
  free(arg);
}
