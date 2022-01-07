
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ resultStatus; } ;
struct TYPE_9__ {char* data; } ;
typedef TYPE_1__ PQExpBufferData ;
typedef TYPE_2__ PGresult ;
typedef int PGVerbosity ;
typedef int PGContextVisibility ;


 scalar_t__ PGRES_FATAL_ERROR ;
 scalar_t__ PGRES_NONFATAL_ERROR ;
 scalar_t__ PQExpBufferDataBroken (TYPE_1__) ;
 int initPQExpBuffer (TYPE_1__*) ;
 int libpq_gettext (char*) ;
 int pqBuildErrorMessage3 (TYPE_1__*,TYPE_2__ const*,int ,int ) ;
 char* strdup (int ) ;
 int termPQExpBuffer (TYPE_1__*) ;

char *
PQresultVerboseErrorMessage(const PGresult *res,
       PGVerbosity verbosity,
       PGContextVisibility show_context)
{
 PQExpBufferData workBuf;






 if (!res ||
  (res->resultStatus != PGRES_FATAL_ERROR &&
   res->resultStatus != PGRES_NONFATAL_ERROR))
  return strdup(libpq_gettext("PGresult is not an error result\n"));

 initPQExpBuffer(&workBuf);
 pqBuildErrorMessage3(&workBuf, res, verbosity, show_context);


 if (PQExpBufferDataBroken(workBuf))
 {
  termPQExpBuffer(&workBuf);
  return strdup(libpq_gettext("out of memory\n"));
 }

 return workBuf.data;
}
