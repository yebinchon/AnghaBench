
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int remoteVersion; } ;
typedef int PGresult ;
typedef int PGconn ;
typedef int Oid ;
typedef TYPE_1__ Archive ;


 int EndBlob (TYPE_1__*,int ) ;
 int * ExecuteSqlQuery (TYPE_1__*,char const*,int ) ;
 int ExecuteSqlStatement (TYPE_1__*,char const*) ;
 int * GetConnection (TYPE_1__*) ;
 int INV_READ ;
 int LOBBUFSIZE ;
 int PGRES_TUPLES_OK ;
 int PQclear (int *) ;
 int PQerrorMessage (int *) ;
 int PQgetvalue (int *,int,int ) ;
 int PQntuples (int *) ;
 int StartBlob (TYPE_1__*,int ) ;
 int WriteData (TYPE_1__*,char*,int) ;
 int atooid (int ) ;
 int fatal (char*,int ,int ) ;
 int lo_close (int *,int) ;
 int lo_open (int *,int ,int ) ;
 int lo_read (int *,int,char*,int) ;
 int pg_log_info (char*) ;

__attribute__((used)) static int
dumpBlobs(Archive *fout, void *arg)
{
 const char *blobQry;
 const char *blobFetchQry;
 PGconn *conn = GetConnection(fout);
 PGresult *res;
 char buf[LOBBUFSIZE];
 int ntups;
 int i;
 int cnt;

 pg_log_info("saving large objects");





 if (fout->remoteVersion >= 90000)
  blobQry =
   "DECLARE bloboid CURSOR FOR "
   "SELECT oid FROM pg_largeobject_metadata ORDER BY 1";
 else
  blobQry =
   "DECLARE bloboid CURSOR FOR "
   "SELECT DISTINCT loid FROM pg_largeobject ORDER BY 1";

 ExecuteSqlStatement(fout, blobQry);


 blobFetchQry = "FETCH 1000 IN bloboid";

 do
 {

  res = ExecuteSqlQuery(fout, blobFetchQry, PGRES_TUPLES_OK);


  ntups = PQntuples(res);
  for (i = 0; i < ntups; i++)
  {
   Oid blobOid;
   int loFd;

   blobOid = atooid(PQgetvalue(res, i, 0));

   loFd = lo_open(conn, blobOid, INV_READ);
   if (loFd == -1)
    fatal("could not open large object %u: %s",
       blobOid, PQerrorMessage(conn));

   StartBlob(fout, blobOid);


   do
   {
    cnt = lo_read(conn, loFd, buf, LOBBUFSIZE);
    if (cnt < 0)
     fatal("error reading large object %u: %s",
        blobOid, PQerrorMessage(conn));

    WriteData(fout, buf, cnt);
   } while (cnt > 0);

   lo_close(conn, loFd);

   EndBlob(fout, blobOid);
  }

  PQclear(res);
 } while (ntups > 0);

 return 1;
}
