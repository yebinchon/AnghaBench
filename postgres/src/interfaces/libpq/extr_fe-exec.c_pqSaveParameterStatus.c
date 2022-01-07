
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char const* name; char* value; struct TYPE_5__* next; } ;
typedef TYPE_1__ pgParameterStatus ;
struct TYPE_6__ {scalar_t__ client_encoding; int std_strings; int sversion; TYPE_1__* pstatus; scalar_t__ Pfdebug; } ;
typedef TYPE_2__ PGconn ;


 scalar_t__ PG_SQL_ASCII ;
 int fprintf (scalar_t__,char*,char const*,char const*) ;
 int free (TYPE_1__*) ;
 scalar_t__ malloc (scalar_t__) ;
 scalar_t__ pg_char_to_encoding (char const*) ;
 int sscanf (char const*,char*,int*,int*,int*) ;
 scalar_t__ static_client_encoding ;
 int static_std_strings ;
 scalar_t__ strcmp (char const*,char const*) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;

void
pqSaveParameterStatus(PGconn *conn, const char *name, const char *value)
{
 pgParameterStatus *pstatus;
 pgParameterStatus *prev;

 if (conn->Pfdebug)
  fprintf(conn->Pfdebug, "pqSaveParameterStatus: '%s' = '%s'\n",
    name, value);




 for (pstatus = conn->pstatus, prev = ((void*)0);
   pstatus != ((void*)0);
   prev = pstatus, pstatus = pstatus->next)
 {
  if (strcmp(pstatus->name, name) == 0)
  {
   if (prev)
    prev->next = pstatus->next;
   else
    conn->pstatus = pstatus->next;
   free(pstatus);
   break;
  }
 }




 pstatus = (pgParameterStatus *) malloc(sizeof(pgParameterStatus) +
             strlen(name) + strlen(value) + 2);
 if (pstatus)
 {
  char *ptr;

  ptr = ((char *) pstatus) + sizeof(pgParameterStatus);
  pstatus->name = ptr;
  strcpy(ptr, name);
  ptr += strlen(name) + 1;
  pstatus->value = ptr;
  strcpy(ptr, value);
  pstatus->next = conn->pstatus;
  conn->pstatus = pstatus;
 }
 if (strcmp(name, "client_encoding") == 0)
 {
  conn->client_encoding = pg_char_to_encoding(value);

  if (conn->client_encoding < 0)
   conn->client_encoding = PG_SQL_ASCII;
  static_client_encoding = conn->client_encoding;
 }
 else if (strcmp(name, "standard_conforming_strings") == 0)
 {
  conn->std_strings = (strcmp(value, "on") == 0);
  static_std_strings = conn->std_strings;
 }
 else if (strcmp(name, "server_version") == 0)
 {
  int cnt;
  int vmaj,
     vmin,
     vrev;

  cnt = sscanf(value, "%d.%d.%d", &vmaj, &vmin, &vrev);

  if (cnt == 3)
  {

   conn->sversion = (100 * vmaj + vmin) * 100 + vrev;
  }
  else if (cnt == 2)
  {
   if (vmaj >= 10)
   {

    conn->sversion = 100 * 100 * vmaj + vmin;
   }
   else
   {

    conn->sversion = (100 * vmaj + vmin) * 100;
   }
  }
  else if (cnt == 1)
  {

   conn->sversion = 100 * 100 * vmaj;
  }
  else
   conn->sversion = 0;
 }
}
