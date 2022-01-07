
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int backslashResult ;
struct TYPE_2__ {int quiet; } ;
typedef int PsqlScanState ;
typedef int PQExpBuffer ;


 int PSQL_CMD_SKIP_LINE ;
 int _ (char*) ;
 TYPE_1__ pset ;
 int psql_scan_reset (int ) ;
 int puts (int ) ;
 int resetPQExpBuffer (int ) ;

__attribute__((used)) static backslashResult
exec_command_reset(PsqlScanState scan_state, bool active_branch,
       PQExpBuffer query_buf)
{
 if (active_branch)
 {
  resetPQExpBuffer(query_buf);
  psql_scan_reset(scan_state);
  if (!pset.quiet)
   puts(_("Query buffer reset (cleared)."));
 }

 return PSQL_CMD_SKIP_LINE;
}
