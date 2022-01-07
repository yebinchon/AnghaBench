
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char int64 ;
typedef int PGresult ;


 scalar_t__ BYTEAOID ;
 scalar_t__ INT8OID ;


 int PQclear (int *) ;
 int PQerrorMessage (int ) ;
 int PQfformat (int *,int) ;
 scalar_t__ PQftype (int *,int) ;
 int * PQgetResult (int ) ;
 scalar_t__ PQgetisnull (int *,int ,int) ;
 int PQgetlength (int *,int ,int) ;
 char* PQgetvalue (int *,int ,int) ;
 int PQnfields (int *) ;
 int PQntuples (int *) ;
 int PQresultErrorMessage (int *) ;
 int PQresultStatus (int *) ;
 int PQsendQueryParams (int ,char const*,int ,int *,int *,int *,int *,int) ;
 int PQsetSingleRowMode (int ) ;
 scalar_t__ TEXTOID ;
 int conn ;
 int memcpy (char*,char*,int) ;
 int open_target_file (char*,int) ;
 int pg_fatal (char*,...) ;
 int pg_free (char*) ;
 int pg_log_debug (char*,...) ;
 char* pg_malloc (int) ;
 char pg_ntoh64 (char) ;
 int remove_target_file (char*,int) ;
 int write_target_range (char*,char,int) ;

__attribute__((used)) static void
receiveFileChunks(const char *sql)
{
 PGresult *res;

 if (PQsendQueryParams(conn, sql, 0, ((void*)0), ((void*)0), ((void*)0), ((void*)0), 1) != 1)
  pg_fatal("could not send query: %s", PQerrorMessage(conn));

 pg_log_debug("getting file chunks");

 if (PQsetSingleRowMode(conn) != 1)
  pg_fatal("could not set libpq connection to single row mode");

 while ((res = PQgetResult(conn)) != ((void*)0))
 {
  char *filename;
  int filenamelen;
  int64 chunkoff;
  int chunksize;
  char *chunk;

  switch (PQresultStatus(res))
  {
   case 129:
    break;

   case 128:
    PQclear(res);
    continue;

   default:
    pg_fatal("unexpected result while fetching remote files: %s",
       PQresultErrorMessage(res));
  }


  if (PQnfields(res) != 3 || PQntuples(res) != 1)
   pg_fatal("unexpected result set size while fetching remote files");

  if (PQftype(res, 0) != TEXTOID ||
   PQftype(res, 1) != INT8OID ||
   PQftype(res, 2) != BYTEAOID)
  {
   pg_fatal("unexpected data types in result set while fetching remote files: %u %u %u",
      PQftype(res, 0), PQftype(res, 1), PQftype(res, 2));
  }

  if (PQfformat(res, 0) != 1 &&
   PQfformat(res, 1) != 1 &&
   PQfformat(res, 2) != 1)
  {
   pg_fatal("unexpected result format while fetching remote files");
  }

  if (PQgetisnull(res, 0, 0) ||
   PQgetisnull(res, 0, 1))
  {
   pg_fatal("unexpected null values in result while fetching remote files");
  }

  if (PQgetlength(res, 0, 1) != sizeof(int64))
   pg_fatal("unexpected result length while fetching remote files");


  memcpy(&chunkoff, PQgetvalue(res, 0, 1), sizeof(int64));
  chunkoff = pg_ntoh64(chunkoff);
  chunksize = PQgetlength(res, 0, 2);

  filenamelen = PQgetlength(res, 0, 0);
  filename = pg_malloc(filenamelen + 1);
  memcpy(filename, PQgetvalue(res, 0, 0), filenamelen);
  filename[filenamelen] = '\0';

  chunk = PQgetvalue(res, 0, 2);
  if (PQgetisnull(res, 0, 2))
  {
   pg_log_debug("received null value for chunk for file \"%s\", file has been deleted",
       filename);
   remove_target_file(filename, 1);
   pg_free(filename);
   PQclear(res);
   continue;
  }

  pg_log_debug("received chunk for file \"%s\", offset %lld, size %d",
      filename, (long long int) chunkoff, chunksize);

  open_target_file(filename, 0);

  write_target_range(chunk, chunkoff, chunksize);

  pg_free(filename);

  PQclear(res);
 }
}
