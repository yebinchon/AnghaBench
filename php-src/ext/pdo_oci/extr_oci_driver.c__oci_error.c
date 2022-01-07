
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ub4 ;
typedef int tmp_buf ;
typedef char text ;
typedef int sword ;
struct TYPE_8__ {char* error_code; scalar_t__ driver_data; } ;
typedef TYPE_1__ pdo_stmt_t ;
struct TYPE_10__ {char* errmsg; int errcode; char const* file; int line; } ;
struct TYPE_9__ {TYPE_3__ einfo; } ;
typedef TYPE_2__ pdo_oci_stmt ;
typedef TYPE_3__ pdo_oci_error_info ;
struct TYPE_11__ {TYPE_3__ einfo; int attached; } ;
typedef TYPE_4__ pdo_oci_db_handle ;
typedef char* pdo_error_type ;
struct TYPE_12__ {char* error_code; int is_closed; int methods; int is_persistent; scalar_t__ driver_data; } ;
typedef TYPE_5__ pdo_dbh_t ;
typedef int errbuf ;
typedef int OCIError ;


 int OCIErrorGet (int *,int,int *,int*,char*,int,int ) ;


 int OCI_HTYPE_ERROR ;






 int pefree (char*,int ) ;
 char* pestrdup (char*,int ) ;
 int php_pdo_get_exception () ;
 int slprintf (char*,int,char*,char*,char const*,...) ;
 int strcpy (char*,char*) ;
 int zend_bailout () ;
 int zend_throw_exception_ex (int ,int,char*,char*,char*) ;

ub4 _oci_error(OCIError *err, pdo_dbh_t *dbh, pdo_stmt_t *stmt, char *what, sword status, int isinit, const char *file, int line)
{
 text errbuf[1024] = "<<Unknown>>";
 char tmp_buf[2048];
 pdo_oci_db_handle *H = (pdo_oci_db_handle *)dbh->driver_data;
 pdo_oci_error_info *einfo;
 pdo_oci_stmt *S = ((void*)0);
 pdo_error_type *pdo_err = &dbh->error_code;

 if (stmt) {
  S = (pdo_oci_stmt*)stmt->driver_data;
  einfo = &S->einfo;
  pdo_err = &stmt->error_code;
 }
 else {
  einfo = &H->einfo;
 }

 if (einfo->errmsg) {
  pefree(einfo->errmsg, dbh->is_persistent);
 }

 einfo->errmsg = ((void*)0);
 einfo->errcode = 0;
 einfo->file = file;
 einfo->line = line;

 if (isinit) {
  strcpy(*pdo_err, "HY000");
  slprintf(tmp_buf, sizeof(tmp_buf), "%s (%s:%d)", what, file, line);
  einfo->errmsg = pestrdup(tmp_buf, dbh->is_persistent);
 }
 else {
  switch (status) {
   case 129:
    strcpy(*pdo_err, "00000");
    break;
   case 134:
    OCIErrorGet(err, (ub4)1, ((void*)0), &einfo->errcode, errbuf, (ub4)sizeof(errbuf), OCI_HTYPE_ERROR);
    slprintf(tmp_buf, sizeof(tmp_buf), "%s: %s (%s:%d)", what, errbuf, file, line);
    einfo->errmsg = pestrdup(tmp_buf, dbh->is_persistent);
    break;
   case 128:
    OCIErrorGet(err, (ub4)1, ((void*)0), &einfo->errcode, errbuf, (ub4)sizeof(errbuf), OCI_HTYPE_ERROR);
    slprintf(tmp_buf, sizeof(tmp_buf), "%s: OCI_SUCCESS_WITH_INFO: %s (%s:%d)", what, errbuf, file, line);
    einfo->errmsg = pestrdup(tmp_buf, dbh->is_persistent);
    break;
   case 132:
    slprintf(tmp_buf, sizeof(tmp_buf), "%s: OCI_NEED_DATA (%s:%d)", what, file, line);
    einfo->errmsg = pestrdup(tmp_buf, dbh->is_persistent);
    break;
   case 131:
    slprintf(tmp_buf, sizeof(tmp_buf), "%s: OCI_NO_DATA (%s:%d)", what, file, line);
    einfo->errmsg = pestrdup(tmp_buf, dbh->is_persistent);
    break;
   case 133:
    slprintf(tmp_buf, sizeof(tmp_buf), "%s: OCI_INVALID_HANDLE (%s:%d)", what, file, line);
    einfo->errmsg = pestrdup(tmp_buf, dbh->is_persistent);
    break;
   case 130:
    slprintf(tmp_buf, sizeof(tmp_buf), "%s: OCI_STILL_EXECUTING (%s:%d)", what, file, line);
    einfo->errmsg = pestrdup(tmp_buf, dbh->is_persistent);
    break;
   case 135:
    slprintf(tmp_buf, sizeof(tmp_buf), "%s: OCI_CONTINUE (%s:%d)", what, file, line);
    einfo->errmsg = pestrdup(tmp_buf, dbh->is_persistent);
    break;
  }

  if (einfo->errcode) {
   switch (einfo->errcode) {
    case 1013:
     zend_bailout();
     break;

    case 12154:
     strcpy(*pdo_err, "42S02");
     break;

    case 22:
    case 378:
    case 602:
    case 603:
    case 604:
    case 609:
    case 1012:
    case 1033:
    case 1041:
    case 1043:
    case 1089:
    case 1090:
    case 1092:
    case 3113:
    case 3114:
    case 3122:
    case 3135:
    case 12153:
    case 27146:
    case 28511:

     dbh->is_closed = 1;
     H->attached = 0;
     strcpy(*pdo_err, "01002");
     break;

    default:
     strcpy(*pdo_err, "HY000");
   }
  }

  if (stmt) {



   if (H->einfo.errmsg) {
    pefree(H->einfo.errmsg, dbh->is_persistent);
   }
   H->einfo = *einfo;
   H->einfo.errmsg = einfo->errmsg ? pestrdup(einfo->errmsg, dbh->is_persistent) : ((void*)0);
   strcpy(dbh->error_code, stmt->error_code);
  }
 }


 if (!dbh->methods) {
  zend_throw_exception_ex(php_pdo_get_exception(), einfo->errcode, "SQLSTATE[%s]: %s", *pdo_err, einfo->errmsg);
 }

 return einfo->errcode;
}
