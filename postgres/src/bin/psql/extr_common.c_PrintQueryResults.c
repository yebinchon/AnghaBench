
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int queryFout; int crosstab_flag; int gexec_flag; int gset_prefix; } ;
typedef int PGresult ;


 int ExecQueryTuples (int *) ;
 char* PQcmdStatus (int *) ;
 int PQresultStatus (int *) ;
 int PrintQueryStatus (int *) ;
 int PrintQueryTuples (int *) ;
 int PrintResultsInCrosstab (int *) ;
 int StoreQueryTuple (int *) ;
 int fflush (int ) ;
 int pg_log_error (char*,int) ;
 TYPE_1__ pset ;
 int strncmp (char const*,char*,int) ;

__attribute__((used)) static bool
PrintQueryResults(PGresult *results)
{
 bool success;
 const char *cmdstatus;

 if (!results)
  return 0;

 switch (PQresultStatus(results))
 {
  case 128:

   if (pset.gset_prefix)
    success = StoreQueryTuple(results);
   else if (pset.gexec_flag)
    success = ExecQueryTuples(results);
   else if (pset.crosstab_flag)
    success = PrintResultsInCrosstab(results);
   else
    success = PrintQueryTuples(results);

   cmdstatus = PQcmdStatus(results);
   if (strncmp(cmdstatus, "INSERT", 6) == 0 ||
    strncmp(cmdstatus, "UPDATE", 6) == 0 ||
    strncmp(cmdstatus, "DELETE", 6) == 0)
    PrintQueryStatus(results);
   break;

  case 134:
   PrintQueryStatus(results);
   success = 1;
   break;

  case 131:
   success = 1;
   break;

  case 132:
  case 133:

   success = 1;
   break;

  case 135:
  case 129:
  case 130:
   success = 0;
   break;

  default:
   success = 0;
   pg_log_error("unexpected PQresultStatus: %d",
       PQresultStatus(results));
   break;
 }

 fflush(pset.queryFout);

 return success;
}
