
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zval ;
typedef int vars ;
typedef int ub4 ;
typedef int text ;
struct pdo_data_src_parser {char* member_0; char* member_1; void* optval; scalar_t__ freeme; int member_2; } ;
typedef int sb4 ;
struct TYPE_6__ {int attached; void* last_err; int max_char_width; int err; int * env; void* session; void* svc; void* server; int charset; int prefetch; } ;
typedef TYPE_1__ pdo_oci_db_handle ;
struct TYPE_7__ {int alloc_own_columns; int native_case; int * methods; void* password; int is_persistent; void* username; TYPE_1__* driver_data; int data_source_len; int data_source; } ;
typedef TYPE_2__ pdo_dbh_t ;
typedef int oratext ;
typedef int dvoid ;


 void* OCIAttrSet (void*,int ,void*,int ,int ,int ) ;
 scalar_t__ OCIEnvNlsCreate (int **,int ,int ,int *,int *,int *,int ,int *,int ,int ) ;
 void* OCIHandleAlloc (int *,int **,int ,int ,int *) ;
 int OCINlsCharSetNameToId (int *,int const*) ;
 void* OCINlsNumericInfoGet (int *,int ,int *,int ) ;
 void* OCIServerAttach (void*,int ,int *,int ,int ) ;
 void* OCISessionBegin (void*,int ,void*,int ,int ) ;
 int OCI_ATTR_PASSWORD ;
 int OCI_ATTR_SERVER ;
 int OCI_ATTR_SESSION ;
 int OCI_ATTR_USERNAME ;
 int OCI_CRED_RDBMS ;
 int OCI_DEFAULT ;
 int OCI_HTYPE_ERROR ;
 int OCI_HTYPE_SERVER ;
 int OCI_HTYPE_SESSION ;
 int OCI_HTYPE_SVCCTX ;
 int OCI_NLS_CHARSET_MAXBYTESZ ;
 scalar_t__ OCI_SUCCESS ;
 int PDO_CASE_UPPER ;
 int PDO_OCI_INIT_MODE ;
 int PDO_OCI_PREFETCH_DEFAULT ;
 int efree (void*) ;
 int oci_drv_error (char*) ;
 int oci_handle_closer (TYPE_2__*) ;
 int oci_init_error (char*) ;
 int oci_methods ;
 int * pdo_oci_Env ;
 TYPE_1__* pecalloc (int,int,int ) ;
 void* pestrdup (void*,int ) ;
 int php_pdo_parse_data_source (int ,int ,struct pdo_data_src_parser*,int) ;
 scalar_t__ strlen (void*) ;

__attribute__((used)) static int pdo_oci_handle_factory(pdo_dbh_t *dbh, zval *driver_options)
{
 pdo_oci_db_handle *H;
 int i, ret = 0;
 struct pdo_data_src_parser vars[] = {
  { "charset", ((void*)0), 0 },
  { "dbname", "", 0 },
  { "user", ((void*)0), 0 },
  { "password", ((void*)0), 0 }
 };

 php_pdo_parse_data_source(dbh->data_source, dbh->data_source_len, vars, 4);

 H = pecalloc(1, sizeof(*H), dbh->is_persistent);
 dbh->driver_data = H;

 H->prefetch = PDO_OCI_PREFETCH_DEFAULT;
 if (H->env == ((void*)0)) {

  H->env = pdo_oci_Env;
 }


 OCIHandleAlloc(H->env, (dvoid **)&H->err, OCI_HTYPE_ERROR, 0, ((void*)0));


 OCIHandleAlloc(H->env, (dvoid **)&H->server, OCI_HTYPE_SERVER, 0, ((void*)0));

 H->last_err = OCIServerAttach(H->server, H->err, (text*)vars[1].optval,
      (sb4) strlen(vars[1].optval), OCI_DEFAULT);

 if (H->last_err) {
  oci_drv_error("pdo_oci_handle_factory");
  goto cleanup;
 }

 H->attached = 1;


 H->last_err = OCIHandleAlloc(H->env, (dvoid**)&H->svc, OCI_HTYPE_SVCCTX, 0, ((void*)0));
 if (H->last_err) {
  oci_drv_error("OCIHandleAlloc: OCI_HTYPE_SVCCTX");
  goto cleanup;
 }

 H->last_err = OCIHandleAlloc(H->env, (dvoid**)&H->session, OCI_HTYPE_SESSION, 0, ((void*)0));
 if (H->last_err) {
  oci_drv_error("OCIHandleAlloc: OCI_HTYPE_SESSION");
  goto cleanup;
 }


 H->last_err = OCIAttrSet(H->svc, OCI_HTYPE_SVCCTX, H->server, 0, OCI_ATTR_SERVER, H->err);
 if (H->last_err) {
  oci_drv_error("OCIAttrSet: OCI_ATTR_SERVER");
  goto cleanup;
 }


 if (!dbh->username && vars[2].optval) {
  dbh->username = pestrdup(vars[2].optval, dbh->is_persistent);
 }

 if (dbh->username) {
  H->last_err = OCIAttrSet(H->session, OCI_HTYPE_SESSION,
       dbh->username, (ub4) strlen(dbh->username),
    OCI_ATTR_USERNAME, H->err);
  if (H->last_err) {
   oci_drv_error("OCIAttrSet: OCI_ATTR_USERNAME");
   goto cleanup;
  }
 }


 if (!dbh->password && vars[3].optval) {
  dbh->password = pestrdup(vars[3].optval, dbh->is_persistent);
 }

 if (dbh->password) {
  H->last_err = OCIAttrSet(H->session, OCI_HTYPE_SESSION,
       dbh->password, (ub4) strlen(dbh->password),
    OCI_ATTR_PASSWORD, H->err);
  if (H->last_err) {
   oci_drv_error("OCIAttrSet: OCI_ATTR_PASSWORD");
   goto cleanup;
  }
 }


 H->last_err = OCISessionBegin(H->svc, H->err, H->session, OCI_CRED_RDBMS, OCI_DEFAULT);
 if (H->last_err) {
  oci_drv_error("OCISessionBegin");
  goto cleanup;
 }


 H->last_err = OCIAttrSet(H->svc, OCI_HTYPE_SVCCTX, H->session, 0, OCI_ATTR_SESSION, H->err);
 if (H->last_err) {
  oci_drv_error("OCIAttrSet: OCI_ATTR_SESSION");
  goto cleanup;
 }


  H->last_err = OCINlsNumericInfoGet(H->env, H->err, &H->max_char_width, OCI_NLS_CHARSET_MAXBYTESZ);
  if (H->last_err) {
   oci_drv_error("OCINlsNumericInfoGet: OCI_NLS_CHARSET_MAXBYTESZ");
   goto cleanup;
  }

 dbh->methods = &oci_methods;
 dbh->alloc_own_columns = 1;
 dbh->native_case = PDO_CASE_UPPER;

 ret = 1;

cleanup:
 for (i = 0; i < sizeof(vars)/sizeof(vars[0]); i++) {
  if (vars[i].freeme) {
   efree(vars[i].optval);
  }
 }

 if (!ret) {
  oci_handle_closer(dbh);
 }

 return ret;
}
