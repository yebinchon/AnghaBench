
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int id; int use_file; int command; int con; int ecnt; } ;
typedef int PGresult ;
typedef TYPE_1__ CState ;





 int PQclear (int *) ;
 char* PQerrorMessage (int ) ;
 char* PQfname (int *,int) ;
 int * PQgetResult (int ) ;
 int PQgetvalue (int *,int ,int) ;
 int PQnfields (int *) ;
 int PQntuples (int *) ;
 int PQresultStatus (int *) ;
 int fprintf (int ,char*,int,int,...) ;
 int pg_free (char*) ;
 char* psprintf (char*,char*,char*) ;
 int putVariable (TYPE_1__*,char*,char*,int ) ;
 int stderr ;

__attribute__((used)) static bool
readCommandResponse(CState *st, char *varprefix)
{
 PGresult *res;
 PGresult *next_res;
 int qrynum = 0;

 res = PQgetResult(st->con);

 while (res != ((void*)0))
 {
  bool is_last;


  next_res = PQgetResult(st->con);
  is_last = (next_res == ((void*)0));

  switch (PQresultStatus(res))
  {
   case 130:
   case 129:
    if (is_last && varprefix != ((void*)0))
    {
     fprintf(stderr,
       "client %d script %d command %d query %d: expected one row, got %d\n",
       st->id, st->use_file, st->command, qrynum, 0);
     goto error;
    }
    break;

   case 128:
    if (is_last && varprefix != ((void*)0))
    {
     if (PQntuples(res) != 1)
     {
      fprintf(stderr,
        "client %d script %d command %d query %d: expected one row, got %d\n",
        st->id, st->use_file, st->command, qrynum, PQntuples(res));
      goto error;
     }


     for (int fld = 0; fld < PQnfields(res); fld++)
     {
      char *varname = PQfname(res, fld);


      if (*varprefix != '\0')
       varname = psprintf("%s%s", varprefix, varname);


      if (!putVariable(st, "gset", varname,
           PQgetvalue(res, 0, fld)))
      {

       fprintf(stderr,
         "client %d script %d command %d query %d: error storing into variable %s\n",
         st->id, st->use_file, st->command, qrynum,
         varname);
       goto error;
      }

      if (*varprefix != '\0')
       pg_free(varname);
     }
    }

    break;

   default:

    fprintf(stderr,
      "client %d script %d aborted in command %d query %d: %s",
      st->id, st->use_file, st->command, qrynum,
      PQerrorMessage(st->con));
    goto error;
  }

  PQclear(res);
  qrynum++;
  res = next_res;
 }

 if (qrynum == 0)
 {
  fprintf(stderr, "client %d command %d: no results\n", st->id, st->command);
  st->ecnt++;
  return 0;
 }

 return 1;

error:
 st->ecnt++;
 PQclear(res);
 PQclear(next_res);
 do
 {
  res = PQgetResult(st->con);
  PQclear(res);
 } while (res);

 return 0;
}
