
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_6__ {scalar_t__ gssenc; scalar_t__ ssl_in_use; } ;
typedef TYPE_1__ PGconn ;


 int pg_GSS_read (TYPE_1__*,void*,size_t) ;
 int pgtls_read (TYPE_1__*,void*,size_t) ;
 int pqsecure_raw_read (TYPE_1__*,void*,size_t) ;

ssize_t
pqsecure_read(PGconn *conn, void *ptr, size_t len)
{
 ssize_t n;
 {
  n = pqsecure_raw_read(conn, ptr, len);
 }

 return n;
}
