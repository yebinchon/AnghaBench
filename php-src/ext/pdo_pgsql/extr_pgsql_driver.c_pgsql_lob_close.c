
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pdo_pgsql_lob_self {int dbh; int lfd; int conn; } ;
struct TYPE_3__ {scalar_t__ abstract; } ;
typedef TYPE_1__ php_stream ;


 int efree (struct pdo_pgsql_lob_self*) ;
 int lo_close (int ,int ) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static int pgsql_lob_close(php_stream *stream, int close_handle)
{
 struct pdo_pgsql_lob_self *self = (struct pdo_pgsql_lob_self*)stream->abstract;

 if (close_handle) {
  lo_close(self->conn, self->lfd);
 }
 zval_ptr_dtor(&self->dbh);
 efree(self);
 return 0;
}
