
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
typedef int zend_long ;
typedef int verstr ;
typedef int ub4 ;
typedef int ub1 ;
typedef int text ;
typedef int sword ;
struct TYPE_4__ {int prefetch; int last_err; int err; int svc; } ;
typedef TYPE_1__ pdo_oci_db_handle ;
struct TYPE_5__ {int auto_commit; scalar_t__ driver_data; } ;
typedef TYPE_2__ pdo_dbh_t ;
typedef int infostr ;
typedef int dvoid ;


 int FALSE ;
 int OCIAttrGet (int ,int ,int *,int *,int ,int ) ;
 int OCIClientVersion (int*,int*,int*,int*,int*) ;
 int OCIServerRelease (int ,int ,int *,int,int ,int*) ;
 int OCI_ATTR_CALL_TIMEOUT ;
 int OCI_HTYPE_SVCCTX ;






 char* PHP_PDO_OCI_CLIENT_VERSION ;
 int TRUE ;
 int ZVAL_BOOL (int *,int ) ;
 int ZVAL_LONG (int *,int) ;
 int ZVAL_STRING (int *,char*) ;
 int oci_drv_error (char*) ;
 int slprintf (char*,int,char*,int,int,int,int,int) ;

__attribute__((used)) static int oci_handle_get_attribute(pdo_dbh_t *dbh, zend_long attr, zval *return_value)
{
 pdo_oci_db_handle *H = (pdo_oci_db_handle *)dbh->driver_data;

 switch (attr) {
  case 129:
  case 130:
  {
   text infostr[512];
   char verstr[15];
   ub4 vernum;

   if (OCIServerRelease(H->svc, H->err, infostr, (ub4)sizeof(infostr), (ub1)OCI_HTYPE_SVCCTX, &vernum))
   {
    ZVAL_STRING(return_value, "<<Unknown>>");
   } else {
    if (attr == 130) {
     ZVAL_STRING(return_value, (char *)infostr);
    } else {
     slprintf(verstr, sizeof(verstr), "%d.%d.%d.%d.%d",
        (int)((vernum>>24) & 0xFF),
        (int)((vernum>>20) & 0x0F),
        (int)((vernum>>12) & 0xFF),
        (int)((vernum>>8) & 0x0F),
        (int)((vernum>>0) & 0xFF));

     ZVAL_STRING(return_value, verstr);
    }
   }
   return TRUE;
  }

  case 132:
  {
   return FALSE;



   return TRUE;
  }

  case 133:
   ZVAL_BOOL(return_value, dbh->auto_commit);
   return TRUE;

  case 131:
   ZVAL_LONG(return_value, H->prefetch);
   return TRUE;
  case 128:
  {
   oci_drv_error("Unsupported attribute type");
   return FALSE;

  }
  default:
   return FALSE;

 }
 return FALSE;

}
