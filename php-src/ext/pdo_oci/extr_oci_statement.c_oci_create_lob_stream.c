
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zval ;
typedef int zend_object ;
struct oci_lob_self {int offset; int dbh; TYPE_4__* S; TYPE_2__* E; TYPE_3__* stmt; int * lob; } ;
typedef int php_stream ;
struct TYPE_8__ {int std; scalar_t__ driver_data; } ;
typedef TYPE_3__ pdo_stmt_t ;
struct TYPE_9__ {int err; TYPE_1__* H; } ;
typedef TYPE_4__ pdo_oci_stmt ;
typedef int oci_lob_env ;
struct TYPE_7__ {int err; int svc; } ;
struct TYPE_6__ {int svc; } ;
typedef int OCILobLocator ;


 int GC_ADDREF (int *) ;
 int ZVAL_COPY_VALUE (int *,int *) ;
 int Z_ADDREF (int ) ;
 void* ecalloc (int,int) ;
 int efree (struct oci_lob_self*) ;
 int oci_blob_stream_ops ;
 int * php_stream_alloc (int *,struct oci_lob_self*,int ,char*) ;

__attribute__((used)) static php_stream *oci_create_lob_stream(zval *dbh, pdo_stmt_t *stmt, OCILobLocator *lob)
{
 php_stream *stm;
 struct oci_lob_self *self = ecalloc(1, sizeof(*self));

 ZVAL_COPY_VALUE(&self->dbh, dbh);
 self->lob = lob;
 self->offset = 1;
 self->stmt = stmt;
 self->S = (pdo_oci_stmt*)stmt->driver_data;
 self->E = ecalloc(1, sizeof(oci_lob_env));
 self->E->svc = self->S->H->svc;
 self->E->err = self->S->err;

 stm = php_stream_alloc(&oci_blob_stream_ops, self, 0, "r+b");

 if (stm) {
  zend_object *obj;
  obj = &stmt->std;
  Z_ADDREF(self->dbh);
  GC_ADDREF(obj);
  return stm;
 }

 efree(self);
 return ((void*)0);
}
