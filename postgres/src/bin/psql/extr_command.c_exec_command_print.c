
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int backslashResult ;
struct TYPE_6__ {int quiet; } ;
struct TYPE_5__ {scalar_t__ len; int data; } ;
typedef int PsqlScanState ;
typedef TYPE_1__* PQExpBuffer ;


 int PSQL_CMD_SKIP_LINE ;
 int _ (char*) ;
 int fflush (int ) ;
 TYPE_2__ pset ;
 int puts (int ) ;
 int stdout ;

__attribute__((used)) static backslashResult
exec_command_print(PsqlScanState scan_state, bool active_branch,
       PQExpBuffer query_buf, PQExpBuffer previous_buf)
{
 if (active_branch)
 {





  if (query_buf && query_buf->len > 0)
   puts(query_buf->data);
  else if (previous_buf && previous_buf->len > 0)
   puts(previous_buf->data);
  else if (!pset.quiet)
   puts(_("Query buffer is empty."));
  fflush(stdout);
 }

 return PSQL_CMD_SKIP_LINE;
}
