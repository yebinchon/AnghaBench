
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ status; int setenv_state; char* client_encoding_initial; int sversion; int errorMessage; TYPE_1__* next_eo; } ;
struct TYPE_9__ {char* envName; char* pgName; } ;
typedef int PostgresPollingStatusType ;
typedef int PGresult ;
typedef TYPE_2__ PGconn ;


 scalar_t__ CONNECTION_BAD ;
 int PGRES_COMMAND_OK ;
 int PGRES_POLLING_FAILED ;
 int PGRES_POLLING_OK ;
 int PGRES_POLLING_READING ;
 int PGRES_TUPLES_OK ;
 int PQclear (int *) ;
 int * PQgetResult (TYPE_2__*) ;
 void* PQgetvalue (int *,int ,int ) ;
 int PQisBusy (TYPE_2__*) ;
 int PQntuples (int *) ;
 int PQresultStatus (int *) ;
 int PQsendQuery (TYPE_2__*,char const*) ;
 int fprintf (int ,char*,char*,...) ;
 char* getenv (char*) ;
 int libpq_gettext (char*) ;
 int pg_strcasecmp (char const*,char*) ;
 int pqReadData (TYPE_2__*) ;
 int pqSaveParameterStatus (TYPE_2__*,char*,char const*) ;
 int printfPQExpBuffer (int *,int ,int) ;
 int sprintf (char*,char*,...) ;
 int stderr ;
 char* strchr (char*,char) ;
 int strncmp (char*,char*,int) ;

PostgresPollingStatusType
pqSetenvPoll(PGconn *conn)
{
 PGresult *res;

 if (conn == ((void*)0) || conn->status == CONNECTION_BAD)
  return PGRES_POLLING_FAILED;


 switch (conn->setenv_state)
 {

  case 135:
  case 132:
  case 130:
  case 128:
   {

    int n = pqReadData(conn);

    if (n < 0)
     goto error_return;
    if (n == 0)
     return PGRES_POLLING_READING;

    break;
   }


  case 136:
  case 133:
  case 131:
  case 129:
   break;


  case 134:
   return PGRES_POLLING_OK;

  default:
   printfPQExpBuffer(&conn->errorMessage,
         libpq_gettext(
           "invalid setenv state %c, "
           "probably indicative of memory corruption\n"
           ),
         conn->setenv_state);
   goto error_return;
 }


 for (;;)
 {
  switch (conn->setenv_state)
  {





   case 136:
    {
     char setQuery[100];

     const char *val = conn->client_encoding_initial;

     if (val)
     {
      if (pg_strcasecmp(val, "default") == 0)
       sprintf(setQuery, "SET client_encoding = DEFAULT");
      else
       sprintf(setQuery, "SET client_encoding = '%.60s'",
         val);





      if (!PQsendQuery(conn, setQuery))
       goto error_return;

      conn->setenv_state = 135;
     }
     else
      conn->setenv_state = 133;
     break;
    }

   case 133:
    {






     char setQuery[100];


     if (conn->next_eo->envName)
     {
      const char *val;

      if ((val = getenv(conn->next_eo->envName)))
      {
       if (pg_strcasecmp(val, "default") == 0)
        sprintf(setQuery, "SET %s = DEFAULT",
          conn->next_eo->pgName);
       else
        sprintf(setQuery, "SET %s = '%.60s'",
          conn->next_eo->pgName, val);





       if (!PQsendQuery(conn, setQuery))
        goto error_return;

       conn->setenv_state = 132;
      }
      else
       conn->next_eo++;
     }
     else
     {

      conn->setenv_state = 131;
     }
     break;
    }

   case 135:
    {
     if (PQisBusy(conn))
      return PGRES_POLLING_READING;

     res = PQgetResult(conn);

     if (res)
     {
      if (PQresultStatus(res) != PGRES_COMMAND_OK)
      {
       PQclear(res);
       goto error_return;
      }
      PQclear(res);

     }
     else
     {

      conn->setenv_state = 133;
     }
     break;
    }

   case 132:
    {
     if (PQisBusy(conn))
      return PGRES_POLLING_READING;

     res = PQgetResult(conn);

     if (res)
     {
      if (PQresultStatus(res) != PGRES_COMMAND_OK)
      {
       PQclear(res);
       goto error_return;
      }
      PQclear(res);

     }
     else
     {

      conn->next_eo++;
      conn->setenv_state = 133;
     }
     break;
    }

   case 131:
    {
     if (!PQsendQuery(conn, "begin; select version(); end"))
      goto error_return;

     conn->setenv_state = 130;
     return PGRES_POLLING_READING;
    }

   case 130:
    {
     if (PQisBusy(conn))
      return PGRES_POLLING_READING;

     res = PQgetResult(conn);

     if (res)
     {
      char *val;

      if (PQresultStatus(res) == PGRES_COMMAND_OK)
      {

       PQclear(res);
       continue;
      }

      if (PQresultStatus(res) != PGRES_TUPLES_OK ||
       PQntuples(res) != 1)
      {
       PQclear(res);
       goto error_return;
      }





      val = PQgetvalue(res, 0, 0);
      if (val && strncmp(val, "PostgreSQL ", 11) == 0)
      {
       char *ptr;


       val += 11;





       ptr = strchr(val, ' ');
       if (ptr)
        *ptr = '\0';

       pqSaveParameterStatus(conn, "server_version",
              val);
      }

      PQclear(res);

     }
     else
     {

      conn->setenv_state = 129;
     }
     break;
    }

   case 129:
    {
     const char *query;
     if (conn->sversion >= 70300 &&
      conn->sversion < 70400)
      query = "begin; select pg_catalog.pg_client_encoding(); end";
     else
      query = "select pg_client_encoding()";
     if (!PQsendQuery(conn, query))
      goto error_return;

     conn->setenv_state = 128;
     return PGRES_POLLING_READING;
    }

   case 128:
    {
     if (PQisBusy(conn))
      return PGRES_POLLING_READING;

     res = PQgetResult(conn);

     if (res)
     {
      const char *val;

      if (PQresultStatus(res) == PGRES_COMMAND_OK)
      {

       PQclear(res);
       continue;
      }

      if (PQresultStatus(res) == PGRES_TUPLES_OK &&
       PQntuples(res) == 1)
      {

       val = PQgetvalue(res, 0, 0);
       if (val && *val)
        pqSaveParameterStatus(conn, "client_encoding",
               val);
      }
      else
      {





       val = getenv("PGCLIENTENCODING");
       if (val && *val)
        pqSaveParameterStatus(conn, "client_encoding",
               val);
       else
        pqSaveParameterStatus(conn, "client_encoding",
               "SQL_ASCII");
      }

      PQclear(res);

     }
     else
     {

      conn->setenv_state = 134;
      return PGRES_POLLING_OK;
     }
     break;
    }

   default:
    printfPQExpBuffer(&conn->errorMessage,
          libpq_gettext("invalid state %c, "
            "probably indicative of memory corruption\n"),
          conn->setenv_state);
    goto error_return;
  }
 }



error_return:
 conn->setenv_state = 134;
 return PGRES_POLLING_FAILED;
}
