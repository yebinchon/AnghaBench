
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* errMsg; char* errQuery; scalar_t__ resultStatus; int client_encoding; int * errFields; } ;
typedef int PQExpBuffer ;
typedef TYPE_1__ PGresult ;
typedef scalar_t__ PGVerbosity ;
typedef scalar_t__ PGContextVisibility ;


 scalar_t__ PGRES_FATAL_ERROR ;
 int PG_DIAG_COLUMN_NAME ;
 int PG_DIAG_CONSTRAINT_NAME ;
 int PG_DIAG_CONTEXT ;
 int PG_DIAG_DATATYPE_NAME ;
 int PG_DIAG_INTERNAL_POSITION ;
 int PG_DIAG_INTERNAL_QUERY ;
 int PG_DIAG_MESSAGE_DETAIL ;
 int PG_DIAG_MESSAGE_HINT ;
 int PG_DIAG_MESSAGE_PRIMARY ;
 int PG_DIAG_SCHEMA_NAME ;
 int PG_DIAG_SEVERITY ;
 int PG_DIAG_SOURCE_FILE ;
 int PG_DIAG_SOURCE_FUNCTION ;
 int PG_DIAG_SOURCE_LINE ;
 int PG_DIAG_SQLSTATE ;
 int PG_DIAG_STATEMENT_POSITION ;
 int PG_DIAG_TABLE_NAME ;
 scalar_t__ PQERRORS_SQLSTATE ;
 scalar_t__ PQERRORS_TERSE ;
 scalar_t__ PQERRORS_VERBOSE ;
 scalar_t__ PQSHOW_CONTEXT_ALWAYS ;
 scalar_t__ PQSHOW_CONTEXT_ERRORS ;
 char* PQresultErrorField (TYPE_1__ const*,int ) ;
 int appendPQExpBuffer (int ,char const*,char const*,...) ;
 int appendPQExpBufferChar (int ,char) ;
 int appendPQExpBufferStr (int ,char const*) ;
 int atoi (char const*) ;
 char const* libpq_gettext (char*) ;
 int reportErrorPosition (int ,char const*,int,int ) ;

void
pqBuildErrorMessage3(PQExpBuffer msg, const PGresult *res,
      PGVerbosity verbosity, PGContextVisibility show_context)
{
 const char *val;
 const char *querytext = ((void*)0);
 int querypos = 0;


 if (res == ((void*)0))
 {
  appendPQExpBufferStr(msg, libpq_gettext("out of memory\n"));
  return;
 }





 if (res->errFields == ((void*)0))
 {
  if (res->errMsg && res->errMsg[0])
   appendPQExpBufferStr(msg, res->errMsg);
  else
   appendPQExpBufferStr(msg, libpq_gettext("no error message available\n"));
  return;
 }


 val = PQresultErrorField(res, PG_DIAG_SEVERITY);
 if (val)
  appendPQExpBuffer(msg, "%s:  ", val);

 if (verbosity == PQERRORS_SQLSTATE)
 {






  val = PQresultErrorField(res, PG_DIAG_SQLSTATE);
  if (val)
  {
   appendPQExpBuffer(msg, "%s\n", val);
   return;
  }
  verbosity = PQERRORS_TERSE;
 }

 if (verbosity == PQERRORS_VERBOSE)
 {
  val = PQresultErrorField(res, PG_DIAG_SQLSTATE);
  if (val)
   appendPQExpBuffer(msg, "%s: ", val);
 }
 val = PQresultErrorField(res, PG_DIAG_MESSAGE_PRIMARY);
 if (val)
  appendPQExpBufferStr(msg, val);
 val = PQresultErrorField(res, PG_DIAG_STATEMENT_POSITION);
 if (val)
 {
  if (verbosity != PQERRORS_TERSE && res->errQuery != ((void*)0))
  {

   querytext = res->errQuery;
   querypos = atoi(val);
  }
  else
  {


   appendPQExpBuffer(msg, libpq_gettext(" at character %s"),
         val);
  }
 }
 else
 {
  val = PQresultErrorField(res, PG_DIAG_INTERNAL_POSITION);
  if (val)
  {
   querytext = PQresultErrorField(res, PG_DIAG_INTERNAL_QUERY);
   if (verbosity != PQERRORS_TERSE && querytext != ((void*)0))
   {

    querypos = atoi(val);
   }
   else
   {


    appendPQExpBuffer(msg, libpq_gettext(" at character %s"),
          val);
   }
  }
 }
 appendPQExpBufferChar(msg, '\n');
 if (verbosity != PQERRORS_TERSE)
 {
  if (querytext && querypos > 0)
   reportErrorPosition(msg, querytext, querypos,
        res->client_encoding);
  val = PQresultErrorField(res, PG_DIAG_MESSAGE_DETAIL);
  if (val)
   appendPQExpBuffer(msg, libpq_gettext("DETAIL:  %s\n"), val);
  val = PQresultErrorField(res, PG_DIAG_MESSAGE_HINT);
  if (val)
   appendPQExpBuffer(msg, libpq_gettext("HINT:  %s\n"), val);
  val = PQresultErrorField(res, PG_DIAG_INTERNAL_QUERY);
  if (val)
   appendPQExpBuffer(msg, libpq_gettext("QUERY:  %s\n"), val);
  if (show_context == PQSHOW_CONTEXT_ALWAYS ||
   (show_context == PQSHOW_CONTEXT_ERRORS &&
    res->resultStatus == PGRES_FATAL_ERROR))
  {
   val = PQresultErrorField(res, PG_DIAG_CONTEXT);
   if (val)
    appendPQExpBuffer(msg, libpq_gettext("CONTEXT:  %s\n"),
          val);
  }
 }
 if (verbosity == PQERRORS_VERBOSE)
 {
  val = PQresultErrorField(res, PG_DIAG_SCHEMA_NAME);
  if (val)
   appendPQExpBuffer(msg,
         libpq_gettext("SCHEMA NAME:  %s\n"), val);
  val = PQresultErrorField(res, PG_DIAG_TABLE_NAME);
  if (val)
   appendPQExpBuffer(msg,
         libpq_gettext("TABLE NAME:  %s\n"), val);
  val = PQresultErrorField(res, PG_DIAG_COLUMN_NAME);
  if (val)
   appendPQExpBuffer(msg,
         libpq_gettext("COLUMN NAME:  %s\n"), val);
  val = PQresultErrorField(res, PG_DIAG_DATATYPE_NAME);
  if (val)
   appendPQExpBuffer(msg,
         libpq_gettext("DATATYPE NAME:  %s\n"), val);
  val = PQresultErrorField(res, PG_DIAG_CONSTRAINT_NAME);
  if (val)
   appendPQExpBuffer(msg,
         libpq_gettext("CONSTRAINT NAME:  %s\n"), val);
 }
 if (verbosity == PQERRORS_VERBOSE)
 {
  const char *valf;
  const char *vall;

  valf = PQresultErrorField(res, PG_DIAG_SOURCE_FILE);
  vall = PQresultErrorField(res, PG_DIAG_SOURCE_LINE);
  val = PQresultErrorField(res, PG_DIAG_SOURCE_FUNCTION);
  if (val || valf || vall)
  {
   appendPQExpBufferStr(msg, libpq_gettext("LOCATION:  "));
   if (val)
    appendPQExpBuffer(msg, libpq_gettext("%s, "), val);
   if (valf && vall)
    appendPQExpBuffer(msg, libpq_gettext("%s:%s"),
          valf, vall);
   appendPQExpBufferChar(msg, '\n');
  }
 }
}
