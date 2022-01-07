
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sqlerrmc; int sqlerrml; } ;
struct sqlca_t {TYPE_1__ sqlerrm; int sqlcode; int sqlstate; } ;
typedef int PGresult ;
typedef int PGconn ;


 scalar_t__ CONNECTION_BAD ;
 int ECPG_DUPLICATE_KEY ;
 int ECPG_INFORMIX_DUPLICATE_KEY ;
 int ECPG_INFORMIX_SUBSELECT_NOT_ONE ;
 int ECPG_PGSQL ;
 char* ECPG_SQLSTATE_ECPG_INTERNAL_ERROR ;
 int ECPG_SUBSELECT_NOT_ONE ;
 int ECPGfree_auto_mem () ;
 struct sqlca_t* ECPGget_sqlca () ;
 scalar_t__ INFORMIX_MODE (int) ;
 int PG_DIAG_MESSAGE_PRIMARY ;
 int PG_DIAG_SQLSTATE ;
 char* PQerrorMessage (int *) ;
 char* PQresultErrorField (int *,int ) ;
 scalar_t__ PQstatus (int *) ;
 char* ecpg_gettext (char*) ;
 int ecpg_log (char*,...) ;
 int snprintf (int ,int,char*,char*,int) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (int ) ;
 scalar_t__ strncmp (int ,char*,int) ;
 int strncpy (int ,char*,int) ;

void
ecpg_raise_backend(int line, PGresult *result, PGconn *conn, int compat)
{
 struct sqlca_t *sqlca = ECPGget_sqlca();
 char *sqlstate;
 char *message;

 if (sqlca == ((void*)0))
 {
  ecpg_log("out of memory");
  ECPGfree_auto_mem();
  return;
 }

 if (result)
 {
  sqlstate = PQresultErrorField(result, PG_DIAG_SQLSTATE);
  if (sqlstate == ((void*)0))
   sqlstate = ECPG_SQLSTATE_ECPG_INTERNAL_ERROR;
  message = PQresultErrorField(result, PG_DIAG_MESSAGE_PRIMARY);
 }
 else
 {
  sqlstate = ECPG_SQLSTATE_ECPG_INTERNAL_ERROR;
  message = PQerrorMessage(conn);
 }

 if (strcmp(sqlstate, ECPG_SQLSTATE_ECPG_INTERNAL_ERROR) == 0)
 {




  if (PQstatus(conn) == CONNECTION_BAD)
  {
   sqlstate = "57P02";
   message = ecpg_gettext("the connection to the server was lost");
  }
 }


 snprintf(sqlca->sqlerrm.sqlerrmc, sizeof(sqlca->sqlerrm.sqlerrmc), "%s on line %d", message, line);
 sqlca->sqlerrm.sqlerrml = strlen(sqlca->sqlerrm.sqlerrmc);


 strncpy(sqlca->sqlstate, sqlstate, sizeof(sqlca->sqlstate));


 if (strncmp(sqlca->sqlstate, "23505", sizeof(sqlca->sqlstate)) == 0)
  sqlca->sqlcode = INFORMIX_MODE(compat) ? ECPG_INFORMIX_DUPLICATE_KEY : ECPG_DUPLICATE_KEY;
 else if (strncmp(sqlca->sqlstate, "21000", sizeof(sqlca->sqlstate)) == 0)
  sqlca->sqlcode = INFORMIX_MODE(compat) ? ECPG_INFORMIX_SUBSELECT_NOT_ONE : ECPG_SUBSELECT_NOT_ONE;
 else
  sqlca->sqlcode = ECPG_PGSQL;


 ecpg_log("raising sqlstate %.*s (sqlcode %ld): %s\n",
    (int) sizeof(sqlca->sqlstate), sqlca->sqlstate, sqlca->sqlcode, sqlca->sqlerrm.sqlerrmc);


 ECPGfree_auto_mem();
}
