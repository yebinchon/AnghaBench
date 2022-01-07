
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int encoding; } ;
typedef int PGresult ;


 int PQfname (int const*,int) ;
 int PQnfields (int const*) ;
 int atoi (char*) ;
 int dequote_downcase_identifier (char*,int,int ) ;
 int pg_log_error (char*,...) ;
 TYPE_1__ pset ;
 scalar_t__ strcmp (char*,int ) ;
 scalar_t__ strlen (char*) ;
 scalar_t__ strspn (char*,char*) ;

__attribute__((used)) static int
indexOfColumn(char *arg, const PGresult *res)
{
 int idx;

 if (arg[0] && strspn(arg, "0123456789") == strlen(arg))
 {

  idx = atoi(arg) - 1;
  if (idx < 0 || idx >= PQnfields(res))
  {
   pg_log_error("\\crosstabview: column number %d is out of range 1..%d",
       idx + 1, PQnfields(res));
   return -1;
  }
 }
 else
 {
  int i;






  dequote_downcase_identifier(arg, 1, pset.encoding);


  idx = -1;
  for (i = 0; i < PQnfields(res); i++)
  {
   if (strcmp(arg, PQfname(res, i)) == 0)
   {
    if (idx >= 0)
    {

     pg_log_error("\\crosstabview: ambiguous column name: \"%s\"", arg);
     return -1;
    }
    idx = i;
   }
  }
  if (idx == -1)
  {
   pg_log_error("\\crosstabview: column name not found: \"%s\"", arg);
   return -1;
  }
 }

 return idx;
}
