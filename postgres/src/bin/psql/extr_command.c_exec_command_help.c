
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int backslashResult ;
struct TYPE_4__ {int pager; } ;
struct TYPE_5__ {TYPE_1__ topt; } ;
struct TYPE_6__ {TYPE_2__ popt; } ;
typedef int PsqlScanState ;


 int OT_WHOLE_LINE ;
 int PSQL_CMD_SKIP_LINE ;
 int free (char*) ;
 int helpSQL (char*,int ) ;
 int ignore_slash_whole_line (int ) ;
 scalar_t__ isspace (unsigned char) ;
 TYPE_3__ pset ;
 char* psql_scan_slash_option (int ,int ,int *,int) ;
 size_t strlen (char*) ;

__attribute__((used)) static backslashResult
exec_command_help(PsqlScanState scan_state, bool active_branch)
{
 if (active_branch)
 {
  char *opt = psql_scan_slash_option(scan_state,
             OT_WHOLE_LINE, ((void*)0), 0);
  size_t len;


  if (opt)
  {
   len = strlen(opt);
   while (len > 0 &&
       (isspace((unsigned char) opt[len - 1])
     || opt[len - 1] == ';'))
    opt[--len] = '\0';
  }

  helpSQL(opt, pset.popt.topt.pager);
  free(opt);
 }
 else
  ignore_slash_whole_line(scan_state);

 return PSQL_CMD_SKIP_LINE;
}
