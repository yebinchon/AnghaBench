
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
struct pdo_pgsql_lob_self {int lfd; int conn; int oid; int dbh; } ;
typedef int php_stream ;
struct TYPE_3__ {int server; } ;
typedef TYPE_1__ pdo_pgsql_db_handle ;
struct TYPE_4__ {scalar_t__ driver_data; } ;
typedef int Oid ;


 int ZVAL_COPY_VALUE (int *,int *) ;
 int Z_ADDREF_P (int *) ;
 TYPE_2__* Z_PDO_DBH_P (int *) ;
 struct pdo_pgsql_lob_self* ecalloc (int,int) ;
 int efree (struct pdo_pgsql_lob_self*) ;
 int pdo_pgsql_lob_stream_ops ;
 int * php_stream_alloc (int *,struct pdo_pgsql_lob_self*,int ,char*) ;

php_stream *pdo_pgsql_create_lob_stream(zval *dbh, int lfd, Oid oid)
{
 php_stream *stm;
 struct pdo_pgsql_lob_self *self = ecalloc(1, sizeof(*self));
 pdo_pgsql_db_handle *H = (pdo_pgsql_db_handle *)(Z_PDO_DBH_P(dbh))->driver_data;

 ZVAL_COPY_VALUE(&self->dbh, dbh);
 self->lfd = lfd;
 self->oid = oid;
 self->conn = H->server;

 stm = php_stream_alloc(&pdo_pgsql_lob_stream_ops, self, 0, "r+b");

 if (stm) {
  Z_ADDREF_P(dbh);
  return stm;
 }

 efree(self);
 return ((void*)0);
}
