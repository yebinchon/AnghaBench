
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int db; } ;
typedef int PGresult ;


 int CheckConnection () ;
 char* PQerrorMessage (int ) ;
 int PQresultStatus (int const*) ;
 int pg_log_error (char*,int) ;
 int pg_log_info (char*,char const*) ;
 TYPE_1__ pset ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static bool
AcceptResult(const PGresult *result)
{
 bool OK;

 if (!result)
  OK = 0;
 else
  switch (PQresultStatus(result))
  {
   case 134:
   case 128:
   case 131:
   case 133:
   case 132:

    OK = 1;
    break;

   case 135:
   case 129:
   case 130:
    OK = 0;
    break;

   default:
    OK = 0;
    pg_log_error("unexpected PQresultStatus: %d",
        PQresultStatus(result));
    break;
  }

 if (!OK)
 {
  const char *error = PQerrorMessage(pset.db);

  if (strlen(error))
   pg_log_info("%s", error);

  CheckConnection();
 }

 return OK;
}
