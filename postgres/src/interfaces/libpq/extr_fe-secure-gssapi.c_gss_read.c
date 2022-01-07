
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;
typedef int PostgresPollingStatusType ;
typedef int PGconn ;


 scalar_t__ EWOULDBLOCK ;
 int PGRES_POLLING_FAILED ;
 int PGRES_POLLING_OK ;
 int PGRES_POLLING_READING ;
 scalar_t__ errno ;
 int pqReadReady (int *) ;
 scalar_t__ pqsecure_raw_read (int *,void*,size_t) ;

__attribute__((used)) static PostgresPollingStatusType
gss_read(PGconn *conn, void *recv_buffer, size_t length, ssize_t *ret)
{
 *ret = pqsecure_raw_read(conn, recv_buffer, length);
 if (*ret < 0 && errno == EWOULDBLOCK)
  return PGRES_POLLING_READING;
 else if (*ret < 0)
  return PGRES_POLLING_FAILED;


 if (*ret == 0)
 {
  int result = pqReadReady(conn);

  if (result < 0)
   return PGRES_POLLING_FAILED;

  if (!result)
   return PGRES_POLLING_READING;

  *ret = pqsecure_raw_read(conn, recv_buffer, length);
  if (*ret == 0)
   return PGRES_POLLING_FAILED;
 }

 return PGRES_POLLING_OK;
}
