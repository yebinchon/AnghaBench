
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vars; int gset_prefix; } ;
typedef int PGresult ;


 char* PQfname (int const*,int) ;
 int PQgetisnull (int const*,int ,int) ;
 char* PQgetvalue (int const*,int ,int) ;
 int PQnfields (int const*) ;
 int PQntuples (int const*) ;
 int SetVariable (int ,char*,char*) ;
 int free (char*) ;
 int pg_log_error (char*) ;
 TYPE_1__ pset ;
 char* psprintf (char*,int ,char*) ;

__attribute__((used)) static bool
StoreQueryTuple(const PGresult *result)
{
 bool success = 1;

 if (PQntuples(result) < 1)
 {
  pg_log_error("no rows returned for \\gset");
  success = 0;
 }
 else if (PQntuples(result) > 1)
 {
  pg_log_error("more than one row returned for \\gset");
  success = 0;
 }
 else
 {
  int i;

  for (i = 0; i < PQnfields(result); i++)
  {
   char *colname = PQfname(result, i);
   char *varname;
   char *value;


   varname = psprintf("%s%s", pset.gset_prefix, colname);

   if (!PQgetisnull(result, 0, i))
    value = PQgetvalue(result, 0, i);
   else
   {

    value = ((void*)0);
   }

   if (!SetVariable(pset.vars, varname, value))
   {
    free(varname);
    success = 0;
    break;
   }

   free(varname);
  }
 }

 return success;
}
