
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int backslashResult ;
struct TYPE_4__ {int encoding; } ;
struct TYPE_5__ {TYPE_1__ topt; } ;
struct TYPE_6__ {int encoding; int vars; TYPE_2__ popt; int db; } ;
typedef int PsqlScanState ;


 int OT_NORMAL ;
 int PQclientEncoding (int ) ;
 int PQsetClientEncoding (int ,char*) ;
 int PSQL_CMD_SKIP_LINE ;
 int SetVariable (int ,char*,int ) ;
 int free (char*) ;
 int ignore_slash_options (int ) ;
 int pg_encoding_to_char (int ) ;
 int pg_log_error (char*,char*) ;
 TYPE_3__ pset ;
 char* psql_scan_slash_option (int ,int ,int *,int) ;
 int puts (int ) ;

__attribute__((used)) static backslashResult
exec_command_encoding(PsqlScanState scan_state, bool active_branch)
{
 if (active_branch)
 {
  char *encoding = psql_scan_slash_option(scan_state,
               OT_NORMAL, ((void*)0), 0);

  if (!encoding)
  {

   puts(pg_encoding_to_char(pset.encoding));
  }
  else
  {

   if (PQsetClientEncoding(pset.db, encoding) == -1)
    pg_log_error("%s: invalid encoding name or conversion procedure not found", encoding);
   else
   {

    pset.encoding = PQclientEncoding(pset.db);
    pset.popt.topt.encoding = pset.encoding;
    SetVariable(pset.vars, "ENCODING",
       pg_encoding_to_char(pset.encoding));
   }
   free(encoding);
  }
 }
 else
  ignore_slash_options(scan_state);

 return PSQL_CMD_SKIP_LINE;
}
