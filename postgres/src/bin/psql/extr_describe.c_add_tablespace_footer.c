
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {TYPE_1__* footer; } ;
typedef TYPE_2__ printTableContent ;
struct TYPE_13__ {int data; } ;
struct TYPE_11__ {scalar_t__ data; } ;
typedef TYPE_3__ PQExpBufferData ;
typedef int PGresult ;
typedef scalar_t__ Oid ;


 int PQclear (int *) ;
 scalar_t__ PQgetvalue (int *,int ,int ) ;
 scalar_t__ PQntuples (int *) ;
 int * PSQLexec (int ) ;
 char RELKIND_INDEX ;
 char RELKIND_MATVIEW ;
 char RELKIND_PARTITIONED_INDEX ;
 char RELKIND_PARTITIONED_TABLE ;
 char RELKIND_RELATION ;
 char RELKIND_TOASTVALUE ;
 char* _ (char*) ;
 int appendPQExpBuffer (TYPE_3__*,char*,scalar_t__) ;
 int initPQExpBuffer (TYPE_3__*) ;
 int printTableAddFooter (TYPE_2__* const,int ) ;
 int printTableSetFooter (TYPE_2__* const,int ) ;
 int printfPQExpBuffer (TYPE_3__*,char*,scalar_t__) ;
 int termPQExpBuffer (TYPE_3__*) ;

__attribute__((used)) static void
add_tablespace_footer(printTableContent *const cont, char relkind,
       Oid tablespace, const bool newline)
{

 if (relkind == RELKIND_RELATION ||
  relkind == RELKIND_MATVIEW ||
  relkind == RELKIND_INDEX ||
  relkind == RELKIND_PARTITIONED_TABLE ||
  relkind == RELKIND_PARTITIONED_INDEX ||
  relkind == RELKIND_TOASTVALUE)
 {





  if (tablespace != 0)
  {
   PGresult *result = ((void*)0);
   PQExpBufferData buf;

   initPQExpBuffer(&buf);
   printfPQExpBuffer(&buf,
         "SELECT spcname FROM pg_catalog.pg_tablespace\n"
         "WHERE oid = '%u';", tablespace);
   result = PSQLexec(buf.data);
   if (!result)
   {
    termPQExpBuffer(&buf);
    return;
   }

   if (PQntuples(result) > 0)
   {
    if (newline)
    {

     printfPQExpBuffer(&buf, _("Tablespace: \"%s\""),
           PQgetvalue(result, 0, 0));
     printTableAddFooter(cont, buf.data);
    }
    else
    {

     printfPQExpBuffer(&buf, "%s", cont->footer->data);




     appendPQExpBuffer(&buf, _(", tablespace \"%s\""),
           PQgetvalue(result, 0, 0));
     printTableSetFooter(cont, buf.data);
    }
   }
   PQclear(result);
   termPQExpBuffer(&buf);
  }
 }
}
