
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int zval ;
typedef size_t ub4 ;
typedef int text ;
struct pdo_bound_param_data {int param_type; int paramno; TYPE_2__* name; int max_value_len; TYPE_5__* driver_data; int parameter; scalar_t__ is_param; } ;
typedef int sb4 ;
typedef int php_stream ;
struct TYPE_11__ {int database_object_handle; scalar_t__ driver_data; } ;
typedef TYPE_3__ pdo_stmt_t ;
struct TYPE_12__ {int have_blobs; TYPE_1__* H; int err; int * stmt; } ;
typedef TYPE_4__ pdo_oci_stmt ;
struct TYPE_13__ {int indicator; int * thing; int actual_len; int used_for_output; int * bind; int retcode; int oci_type; } ;
typedef TYPE_5__ pdo_oci_bound_param ;
typedef enum pdo_param_event { ____Placeholder_pdo_param_event } pdo_param_event ;
typedef int buf ;
typedef int Z_STR_P ;
struct TYPE_10__ {int len; scalar_t__ val; } ;
struct TYPE_9__ {int err; int svc; int * env; } ;
typedef int OCILobLocator ;


 int IS_NULL ;
 int IS_STRING ;
 int OCIAttrSet ;
 int OCIBindByName ;
 int OCIBindByPos ;
 int OCIBindDynamic ;
 int OCIDescriptorAlloc ;
 int OCIDescriptorFree (int *,int ) ;
 int OCILobClose (int ,int ,int *) ;
 int OCILobFlushBuffer (int ,int ,int *,int ) ;
 int OCILobOpen (int ,int ,int *,int ) ;
 int OCILobWrite (int ,int ,int *,size_t*,size_t,char*,size_t,int ,int *,int *,int ,int ) ;
 int OCI_ATTR_LOBEMPTY ;
 int OCI_DATA_AT_EXEC ;
 int OCI_DTYPE_LOB ;
 int OCI_LOB_READWRITE ;
 int OCI_ONE_PIECE ;
 int OCI_TEMPLOB_CLOSE (int *,int ,int ,int *) ;
 int const PDO_PARAM_TYPE (int ) ;
 int SQLCS_IMPLICIT ;
 int SQLT_BLOB ;
 int SQLT_CHR ;
 int STMT_CALL (int ,int *) ;
 int ZVAL_UNDEF (int *) ;
 scalar_t__ Z_ISREF (int ) ;
 int * Z_REFVAL (int ) ;
 size_t Z_STRLEN_P (int *) ;
 char* Z_STRVAL_P (int *) ;
 int Z_TYPE_P (int *) ;
 scalar_t__ ecalloc (int,int) ;
 int efree (TYPE_5__*) ;
 int oci_bind_input_cb ;
 int oci_bind_output_cb ;
 int * oci_create_lob_stream (int *,TYPE_3__*,int *) ;
 int php_stream_from_zval_no_verify (int *,int *) ;
 size_t php_stream_read (int *,char*,int) ;
 int php_stream_to_zval (int *,int *) ;
 int zend_string_init (char*,int ,int) ;
 int zval_ptr_dtor_str (int *) ;

__attribute__((used)) static int oci_stmt_param_hook(pdo_stmt_t *stmt, struct pdo_bound_param_data *param, enum pdo_param_event event_type)
{
 pdo_oci_stmt *S = (pdo_oci_stmt*)stmt->driver_data;


 if (param->is_param) {
  pdo_oci_bound_param *P;
  sb4 value_sz = -1;
  zval *parameter;

  if (Z_ISREF(param->parameter))
   parameter = Z_REFVAL(param->parameter);
  else
   parameter = &param->parameter;

  P = (pdo_oci_bound_param*)param->driver_data;

  switch (event_type) {
   case 133:
   case 134:
   case 131:

    break;

   case 132:
    P = param->driver_data;
    if (P && P->thing) {
     OCI_TEMPLOB_CLOSE(S->H->env, S->H->svc, S->H->err, P->thing);
     OCIDescriptorFree(P->thing, OCI_DTYPE_LOB);
     P->thing = ((void*)0);
     efree(P);
    }
    else if (P) {
     efree(P);
    }
    break;

   case 137:
    P = (pdo_oci_bound_param*)ecalloc(1, sizeof(pdo_oci_bound_param));
    param->driver_data = P;


    switch (PDO_PARAM_TYPE(param->param_type)) {
     case 129:
      return 0;

     case 130:

      P->oci_type = SQLT_BLOB;
      value_sz = (sb4) sizeof(OCILobLocator*);
      break;

     case 128:
     default:
      P->oci_type = SQLT_CHR;
      value_sz = (sb4) param->max_value_len;
      if (param->max_value_len == 0) {
       value_sz = (sb4) 1332;
      }

    }

    if (param->name) {
     STMT_CALL(OCIBindByName, (S->stmt,
       &P->bind, S->err, (text*)param->name->val,
       (sb4) param->name->len, 0, value_sz, P->oci_type,
       &P->indicator, 0, &P->retcode, 0, 0,
       OCI_DATA_AT_EXEC));
    } else {
     STMT_CALL(OCIBindByPos, (S->stmt,
       &P->bind, S->err, ((ub4)param->paramno)+1,
       0, value_sz, P->oci_type,
       &P->indicator, 0, &P->retcode, 0, 0,
       OCI_DATA_AT_EXEC));
    }

    STMT_CALL(OCIBindDynamic, (P->bind,
       S->err,
       param, oci_bind_input_cb,
       param, oci_bind_output_cb));

    return 1;

   case 135:
    P->indicator = 0;
    P->used_for_output = 0;
    if (PDO_PARAM_TYPE(param->param_type) == 130) {
     ub4 empty = 0;
     STMT_CALL(OCIDescriptorAlloc, (S->H->env, &P->thing, OCI_DTYPE_LOB, 0, ((void*)0)));
     STMT_CALL(OCIAttrSet, (P->thing, OCI_DTYPE_LOB, &empty, 0, OCI_ATTR_LOBEMPTY, S->err));
     S->have_blobs = 1;
    }
    return 1;

   case 136:

    if (P->used_for_output) {
     if (P->indicator == -1) {

      if (Z_TYPE_P(parameter) == IS_STRING) {

       *Z_STRVAL_P(parameter) = '\0';
      }
      zval_ptr_dtor_str(parameter);
      ZVAL_UNDEF(parameter);
     } else if (Z_TYPE_P(parameter) == IS_STRING) {
      Z_STR_P(parameter) = zend_string_init(Z_STRVAL_P(parameter), P->actual_len, 1);
     }
    } else if (PDO_PARAM_TYPE(param->param_type) == 130 && P->thing) {
     php_stream *stm;

     if (Z_TYPE_P(parameter) == IS_NULL) {




      stm = oci_create_lob_stream(&stmt->database_object_handle, stmt, (OCILobLocator*)P->thing);
      if (stm) {
       OCILobOpen(S->H->svc, S->err, (OCILobLocator*)P->thing, OCI_LOB_READWRITE);
       php_stream_to_zval(stm, parameter);
      }
     } else {

      size_t n;
      ub4 amt, offset = 1;
      char *consume;

      php_stream_from_zval_no_verify(stm, parameter);
      if (stm) {
       OCILobOpen(S->H->svc, S->err, (OCILobLocator*)P->thing, OCI_LOB_READWRITE);
       do {
        char buf[8192];
        n = php_stream_read(stm, buf, sizeof(buf));
        if ((int)n <= 0) {
         break;
        }
        consume = buf;
        do {
         amt = (ub4) n;
         OCILobWrite(S->H->svc, S->err, (OCILobLocator*)P->thing,
           &amt, offset, consume, (ub4) n,
           OCI_ONE_PIECE,
           ((void*)0), ((void*)0), 0, SQLCS_IMPLICIT);
         offset += amt;
         n -= amt;
         consume += amt;
        } while (n);
       } while (1);
       OCILobClose(S->H->svc, S->err, (OCILobLocator*)P->thing);
       OCILobFlushBuffer(S->H->svc, S->err, (OCILobLocator*)P->thing, 0);
      } else if (Z_TYPE_P(parameter) == IS_STRING) {

       consume = Z_STRVAL_P(parameter);
       n = Z_STRLEN_P(parameter);
       if (n) {
        OCILobOpen(S->H->svc, S->err, (OCILobLocator*)P->thing, OCI_LOB_READWRITE);
        while (n) {
         amt = (ub4) n;
         OCILobWrite(S->H->svc, S->err, (OCILobLocator*)P->thing,
           &amt, offset, consume, (ub4) n,
           OCI_ONE_PIECE,
           ((void*)0), ((void*)0), 0, SQLCS_IMPLICIT);
         consume += amt;
         n -= amt;
        }
        OCILobClose(S->H->svc, S->err, (OCILobLocator*)P->thing);
       }
      }
      OCI_TEMPLOB_CLOSE(S->H->env, S->H->svc, S->H->err, P->thing);
      OCIDescriptorFree(P->thing, OCI_DTYPE_LOB);
      P->thing = ((void*)0);
     }
    }

    return 1;
  }
 }

 return 1;
}
