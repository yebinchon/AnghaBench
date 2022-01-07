
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
typedef int zend_string ;
typedef int zend_long ;
typedef int ub4 ;
struct TYPE_4__ {void* last_err; int err; int svc; int session; int prefetch; } ;
typedef TYPE_1__ pdo_oci_db_handle ;
struct TYPE_5__ {int auto_commit; int in_txn; scalar_t__ driver_data; } ;
typedef TYPE_2__ pdo_dbh_t ;
typedef int dvoid ;


 void* OCIAttrSet (int ,int ,int *,int ,int ,int ) ;
 void* OCITransCommit (int ,int ,int ) ;
 int OCI_ATTR_ACTION ;
 int OCI_ATTR_CALL_TIMEOUT ;
 int OCI_ATTR_CLIENT_IDENTIFIER ;
 int OCI_ATTR_CLIENT_INFO ;
 int OCI_ATTR_MODULE ;
 int OCI_HTYPE_SESSION ;
 int OCI_HTYPE_SVCCTX ;







 int UNEXPECTED (int) ;
 int ZSTR_LEN (int *) ;
 scalar_t__ ZSTR_VAL (int *) ;
 void* oci_drv_error (char*) ;
 int pdo_oci_sanitize_prefetch (int) ;
 int zval_get_long (int *) ;
 int * zval_try_get_string (int *) ;

__attribute__((used)) static int oci_handle_set_attribute(pdo_dbh_t *dbh, zend_long attr, zval *val)
{
 zend_long lval = zval_get_long(val);
 pdo_oci_db_handle *H = (pdo_oci_db_handle *)dbh->driver_data;

 switch (attr) {
  case 134:
  {
   if (dbh->in_txn) {

    H->last_err = OCITransCommit(H->svc, H->err, 0);

    if (H->last_err) {
     H->last_err = oci_drv_error("OCITransCommit");
     return 0;
    }
    dbh->in_txn = 0;
   }

   dbh->auto_commit = (unsigned int)lval? 1 : 0;
   return 1;
  }
  case 133:
  {
   H->prefetch = pdo_oci_sanitize_prefetch(lval);
   return 1;
  }
  case 132:
  {
   oci_drv_error("Unsupported attribute type");
   return 0;

  }
  case 129:
  {
   oci_drv_error("Unsupported attribute type");
   return 0;

  }
  case 130:
  {
   oci_drv_error("Unsupported attribute type");
   return 0;

  }
  case 128:
  {
   oci_drv_error("Unsupported attribute type");
   return 0;

  }
  case 131:
  {
   oci_drv_error("Unsupported attribute type");
   return 0;

  }
  default:
   return 0;
 }

}
