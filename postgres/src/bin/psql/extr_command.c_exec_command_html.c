
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int backslashResult ;
struct TYPE_4__ {scalar_t__ format; } ;
struct TYPE_6__ {TYPE_1__ topt; } ;
struct TYPE_5__ {int quiet; TYPE_3__ popt; } ;
typedef int PsqlScanState ;


 scalar_t__ PRINT_HTML ;
 int PSQL_CMD_ERROR ;
 int PSQL_CMD_SKIP_LINE ;
 int do_pset (char*,char*,TYPE_3__*,int ) ;
 TYPE_2__ pset ;

__attribute__((used)) static backslashResult
exec_command_html(PsqlScanState scan_state, bool active_branch)
{
 bool success = 1;

 if (active_branch)
 {
  if (pset.popt.topt.format != PRINT_HTML)
   success = do_pset("format", "html", &pset.popt, pset.quiet);
  else
   success = do_pset("format", "aligned", &pset.popt, pset.quiet);
 }

 return success ? PSQL_CMD_SKIP_LINE : PSQL_CMD_ERROR;
}
