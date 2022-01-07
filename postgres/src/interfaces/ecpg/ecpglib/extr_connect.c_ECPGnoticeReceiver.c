
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* sqlerrmc; int sqlerrml; } ;
struct sqlca_t {int sqlcode; char* sqlwarn; TYPE_1__ sqlerrm; scalar_t__* sqlstate; } ;
typedef int PGresult ;


 int ECPG_SQLSTATE_ACTIVE_SQL_TRANSACTION ;
 int ECPG_SQLSTATE_DUPLICATE_CURSOR ;
 char* ECPG_SQLSTATE_ECPG_INTERNAL_ERROR ;
 int ECPG_SQLSTATE_INVALID_CURSOR_NAME ;
 int ECPG_SQLSTATE_NO_ACTIVE_SQL_TRANSACTION ;
 int ECPG_WARNING_IN_TRANSACTION ;
 int ECPG_WARNING_NO_TRANSACTION ;
 int ECPG_WARNING_PORTAL_EXISTS ;
 int ECPG_WARNING_UNKNOWN_PORTAL ;
 struct sqlca_t* ECPGget_sqlca () ;
 int PG_DIAG_MESSAGE_PRIMARY ;
 int PG_DIAG_SQLSTATE ;
 char* PQresultErrorField (int const*,int ) ;
 char* ecpg_gettext (char*) ;
 int ecpg_log (char*,...) ;
 scalar_t__ strcmp (char*,int ) ;
 int strlen (scalar_t__*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int strncpy (scalar_t__*,char*,int) ;

__attribute__((used)) static void
ECPGnoticeReceiver(void *arg, const PGresult *result)
{
 char *sqlstate = PQresultErrorField(result, PG_DIAG_SQLSTATE);
 char *message = PQresultErrorField(result, PG_DIAG_MESSAGE_PRIMARY);
 struct sqlca_t *sqlca = ECPGget_sqlca();
 int sqlcode;

 if (sqlca == ((void*)0))
 {
  ecpg_log("out of memory");
  return;
 }

 (void) arg;
 if (sqlstate == ((void*)0))
  sqlstate = ECPG_SQLSTATE_ECPG_INTERNAL_ERROR;

 if (message == ((void*)0))
  message = ecpg_gettext("empty message text");


 if (strncmp(sqlstate, "00", 2) == 0)
  return;

 ecpg_log("ECPGnoticeReceiver: %s\n", message);


 if (strcmp(sqlstate, ECPG_SQLSTATE_INVALID_CURSOR_NAME) == 0)
  sqlcode = ECPG_WARNING_UNKNOWN_PORTAL;
 else if (strcmp(sqlstate, ECPG_SQLSTATE_ACTIVE_SQL_TRANSACTION) == 0)
  sqlcode = ECPG_WARNING_IN_TRANSACTION;
 else if (strcmp(sqlstate, ECPG_SQLSTATE_NO_ACTIVE_SQL_TRANSACTION) == 0)
  sqlcode = ECPG_WARNING_NO_TRANSACTION;
 else if (strcmp(sqlstate, ECPG_SQLSTATE_DUPLICATE_CURSOR) == 0)
  sqlcode = ECPG_WARNING_PORTAL_EXISTS;
 else
  sqlcode = 0;

 strncpy(sqlca->sqlstate, sqlstate, sizeof(sqlca->sqlstate));
 sqlca->sqlcode = sqlcode;
 sqlca->sqlwarn[2] = 'W';
 sqlca->sqlwarn[0] = 'W';

 strncpy(sqlca->sqlerrm.sqlerrmc, message, sizeof(sqlca->sqlerrm.sqlerrmc));
 sqlca->sqlerrm.sqlerrmc[sizeof(sqlca->sqlerrm.sqlerrmc) - 1] = 0;
 sqlca->sqlerrm.sqlerrml = strlen(sqlca->sqlerrm.sqlerrmc);

 ecpg_log("raising sqlcode %d\n", sqlcode);
}
