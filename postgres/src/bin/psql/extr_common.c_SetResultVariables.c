
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vars; } ;
typedef int PGresult ;


 int PG_DIAG_MESSAGE_PRIMARY ;
 int PG_DIAG_SQLSTATE ;
 char* PQcmdTuples (int *) ;
 char* PQresultErrorField (int *,int ) ;
 int SetVariable (int ,char*,char const*) ;
 TYPE_1__ pset ;

__attribute__((used)) static void
SetResultVariables(PGresult *results, bool success)
{
 if (success)
 {
  const char *ntuples = PQcmdTuples(results);

  SetVariable(pset.vars, "ERROR", "false");
  SetVariable(pset.vars, "SQLSTATE", "00000");
  SetVariable(pset.vars, "ROW_COUNT", *ntuples ? ntuples : "0");
 }
 else
 {
  const char *code = PQresultErrorField(results, PG_DIAG_SQLSTATE);
  const char *mesg = PQresultErrorField(results, PG_DIAG_MESSAGE_PRIMARY);

  SetVariable(pset.vars, "ERROR", "true");





  if (code == ((void*)0))
   code = "";
  SetVariable(pset.vars, "SQLSTATE", code);
  SetVariable(pset.vars, "ROW_COUNT", "0");
  SetVariable(pset.vars, "LAST_ERROR_SQLSTATE", code);
  SetVariable(pset.vars, "LAST_ERROR_MESSAGE", mesg ? mesg : "");
 }
}
