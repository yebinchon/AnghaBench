
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum COMPAT_MODE { ____Placeholder_COMPAT_MODE } COMPAT_MODE ;
typedef int PGresult ;
typedef int PGconn ;


 int ECPG_EMPTY ;
 int ECPG_SQLSTATE_ECPG_INTERNAL_ERROR ;
 int PQclear (int *) ;
 int PQendcopy (int *) ;
 int PQerrorMessage (int *) ;
 int PQresultErrorMessage (int *) ;
 int PQresultStatus (int *) ;
 int ecpg_log (char*,int,...) ;
 int ecpg_raise (int,int ,int ,int *) ;
 int ecpg_raise_backend (int,int *,int *,int) ;

bool
ecpg_check_PQresult(PGresult *results, int lineno, PGconn *connection, enum COMPAT_MODE compat)
{
 if (results == ((void*)0))
 {
  ecpg_log("ecpg_check_PQresult on line %d: no result - %s", lineno, PQerrorMessage(connection));
  ecpg_raise_backend(lineno, ((void*)0), connection, compat);
  return 0;
 }

 switch (PQresultStatus(results))
 {

  case 128:
   return 1;
   break;
  case 131:

   ecpg_raise(lineno, ECPG_EMPTY, ECPG_SQLSTATE_ECPG_INTERNAL_ERROR, ((void*)0));
   PQclear(results);
   return 0;
   break;
  case 134:
   return 1;
   break;
  case 129:
  case 130:
  case 135:
   ecpg_log("ecpg_check_PQresult on line %d: bad response - %s", lineno, PQresultErrorMessage(results));
   ecpg_raise_backend(lineno, results, connection, compat);
   PQclear(results);
   return 0;
   break;
  case 132:
   return 1;
   break;
  case 133:
   ecpg_log("ecpg_check_PQresult on line %d: COPY IN data transfer in progress\n", lineno);
   PQendcopy(connection);
   PQclear(results);
   return 0;
   break;
  default:
   ecpg_log("ecpg_check_PQresult on line %d: unknown execution status type\n",
      lineno);
   ecpg_raise_backend(lineno, results, connection, compat);
   PQclear(results);
   return 0;
   break;
 }
}
