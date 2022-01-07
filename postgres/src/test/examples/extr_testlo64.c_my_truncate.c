
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pg_int64 ;
typedef int PGconn ;
typedef int Oid ;


 int INV_READ ;
 int INV_WRITE ;
 char* PQerrorMessage (int *) ;
 int fprintf (int ,char*,...) ;
 int lo_close (int *,int) ;
 int lo_open (int *,int,int) ;
 scalar_t__ lo_truncate64 (int *,int,int ) ;
 int stderr ;

__attribute__((used)) static void
my_truncate(PGconn *conn, Oid lobjId, pg_int64 len)
{
 int lobj_fd;

 lobj_fd = lo_open(conn, lobjId, INV_READ | INV_WRITE);
 if (lobj_fd < 0)
  fprintf(stderr, "cannot open large object %u", lobjId);

 if (lo_truncate64(conn, lobj_fd, len) < 0)
  fprintf(stderr, "error in lo_truncate64: %s", PQerrorMessage(conn));

 lo_close(conn, lobj_fd);
}
