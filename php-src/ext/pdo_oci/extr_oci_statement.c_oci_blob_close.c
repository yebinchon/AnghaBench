
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zend_object ;
struct oci_lob_self {struct oci_lob_self* E; int dbh; int lob; int err; int svc; TYPE_2__* stmt; } ;
struct TYPE_4__ {scalar_t__ abstract; } ;
typedef TYPE_1__ php_stream ;
struct TYPE_5__ {int std; } ;
typedef TYPE_2__ pdo_stmt_t ;


 int GC_DELREF (int *) ;
 int OCILobClose (int ,int ,int ) ;
 int efree (struct oci_lob_self*) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static int oci_blob_close(php_stream *stream, int close_handle)
{
 struct oci_lob_self *self = (struct oci_lob_self *)stream->abstract;
 pdo_stmt_t *stmt = self->stmt;

 if (close_handle) {
  zend_object *obj = &stmt->std;

  OCILobClose(self->E->svc, self->E->err, self->lob);
  zval_ptr_dtor(&self->dbh);
  GC_DELREF(obj);
  efree(self->E);
  efree(self);
 }


 return 0;
}
