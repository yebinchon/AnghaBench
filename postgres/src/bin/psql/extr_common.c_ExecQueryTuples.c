
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int gexec_flag; scalar_t__ echo; scalar_t__ on_error_stop; int singlestep; } ;
typedef int PGresult ;


 int PQgetisnull (int const*,int,int) ;
 char* PQgetvalue (int const*,int,int) ;
 int PQnfields (int const*) ;
 int PQntuples (int const*) ;
 scalar_t__ PSQL_ECHO_ALL ;
 int SendQuery (char const*) ;
 scalar_t__ cancel_pressed ;
 int fflush (int ) ;
 TYPE_1__ pset ;
 int puts (char const*) ;
 int stdout ;

__attribute__((used)) static bool
ExecQueryTuples(const PGresult *result)
{
 bool success = 1;
 int nrows = PQntuples(result);
 int ncolumns = PQnfields(result);
 int r,
    c;







 pset.gexec_flag = 0;

 for (r = 0; r < nrows; r++)
 {
  for (c = 0; c < ncolumns; c++)
  {
   if (!PQgetisnull(result, r, c))
   {
    const char *query = PQgetvalue(result, r, c);


    if (cancel_pressed)
     goto loop_exit;





    if (pset.echo == PSQL_ECHO_ALL && !pset.singlestep)
    {
     puts(query);
     fflush(stdout);
    }

    if (!SendQuery(query))
    {

     success = 0;
     if (pset.on_error_stop)
      goto loop_exit;
    }
   }
  }
 }

loop_exit:






 pset.gexec_flag = 1;


 return success;
}
