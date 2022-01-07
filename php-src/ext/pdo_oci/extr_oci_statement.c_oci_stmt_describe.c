
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ zend_bool ;
typedef int ub4 ;
typedef int ub2 ;
typedef int text ;
struct pdo_column_data {int precision; int maxlen; void* param_type; int name; } ;
struct TYPE_8__ {struct pdo_column_data* columns; scalar_t__ driver_data; } ;
typedef TYPE_3__ pdo_stmt_t ;
struct TYPE_9__ {TYPE_2__* cols; int err; int stmt; TYPE_1__* H; } ;
typedef TYPE_4__ pdo_oci_stmt ;
typedef int dvoid ;
struct TYPE_7__ {int dtype; int datalen; int def; int retcode; int fetched_len; int indicator; void* data; } ;
struct TYPE_6__ {int max_char_width; int env; } ;
typedef int OCIParam ;
typedef int OCILobLocator ;


 scalar_t__ FALSE ;
 int OCIAttrGet ;
 int OCIDefineByPos ;
 int OCIDefineDynamic ;
 int OCIDescriptorAlloc ;
 int OCIParamGet ;
 int OCI_ATTR_DATA_SIZE ;
 int OCI_ATTR_DATA_TYPE ;
 int OCI_ATTR_NAME ;
 int OCI_ATTR_PRECISION ;
 int OCI_DEFAULT ;
 int OCI_DTYPE_LOB ;
 int OCI_DTYPE_PARAM ;
 int OCI_DYNAMIC_FETCH ;
 int OCI_HTYPE_STMT ;
 void* PDO_PARAM_LOB ;
 void* PDO_PARAM_STR ;


 int SQLT_CHR ;

 int SQLT_DAT ;
 int SQLT_IBDOUBLE ;
 int SQLT_IBFLOAT ;


 int SQLT_NUM ;
 int SQLT_RDD ;
 int SQLT_TIMESTAMP ;
 int SQLT_TIMESTAMP_TZ ;
 int STMT_CALL (int ,int ) ;
 int STMT_CALL_MSG (int ,char*,int *) ;
 scalar_t__ TRUE ;
 void* emalloc (int ) ;
 int oci_define_callback ;
 int zend_string_init (char*,int,int ) ;

__attribute__((used)) static int oci_stmt_describe(pdo_stmt_t *stmt, int colno)
{
 pdo_oci_stmt *S = (pdo_oci_stmt*)stmt->driver_data;
 OCIParam *param = ((void*)0);
 text *colname;
 ub2 dtype, data_size, precis;
 ub4 namelen;
 struct pdo_column_data *col = &stmt->columns[colno];
 zend_bool dyn = FALSE;


 STMT_CALL(OCIParamGet, (S->stmt, OCI_HTYPE_STMT, S->err, (dvoid*)&param, colno+1));


 STMT_CALL_MSG(OCIAttrGet, "OCI_ATTR_DATA_TYPE",
   (param, OCI_DTYPE_PARAM, &dtype, 0, OCI_ATTR_DATA_TYPE, S->err));


 STMT_CALL_MSG(OCIAttrGet, "OCI_ATTR_DATA_SIZE",
   (param, OCI_DTYPE_PARAM, &data_size, 0, OCI_ATTR_DATA_SIZE, S->err));


 STMT_CALL_MSG(OCIAttrGet, "OCI_ATTR_PRECISION",
   (param, OCI_DTYPE_PARAM, &precis, 0, OCI_ATTR_PRECISION, S->err));


 STMT_CALL_MSG(OCIAttrGet, "OCI_ATTR_NAME",
   (param, OCI_DTYPE_PARAM, &colname, &namelen, OCI_ATTR_NAME, S->err));

 col->precision = precis;
 col->maxlen = data_size;
 col->name = zend_string_init((char *)colname, namelen, 0);

 S->cols[colno].dtype = dtype;


 switch (dtype) {
  case 129:
  case 128:
   if (dtype == 129) {
    dtype = 132;
   } else {
    dtype = SQLT_CHR;
   }
   S->cols[colno].datalen = 512;
   S->cols[colno].data = emalloc(S->cols[colno].datalen + 1);
   col->param_type = PDO_PARAM_STR;
   break;

  case 131:
  case 130:
   col->param_type = PDO_PARAM_LOB;
   STMT_CALL(OCIDescriptorAlloc, (S->H->env, (dvoid**)&S->cols[colno].data, OCI_DTYPE_LOB, 0, ((void*)0)));
   S->cols[colno].datalen = sizeof(OCILobLocator*);
   dyn = TRUE;
   break;

  case 132:
  default:
   if (dtype == SQLT_DAT || dtype == SQLT_NUM || dtype == SQLT_RDD






     ) {

    S->cols[colno].datalen = 512;




   } else if (dtype == 132) {
    S->cols[colno].datalen = (ub4) col->maxlen * 2;
   } else {
    S->cols[colno].datalen = (ub4) (col->maxlen * S->H->max_char_width);
   }

   S->cols[colno].data = emalloc(S->cols[colno].datalen + 1);
   dtype = SQLT_CHR;


   col->param_type = PDO_PARAM_STR;
 }

 STMT_CALL(OCIDefineByPos, (S->stmt, &S->cols[colno].def, S->err, colno+1,
    S->cols[colno].data, S->cols[colno].datalen, dtype, &S->cols[colno].indicator,
    &S->cols[colno].fetched_len, &S->cols[colno].retcode, dyn ? OCI_DYNAMIC_FETCH : OCI_DEFAULT));

 if (dyn) {
  STMT_CALL(OCIDefineDynamic, (S->cols[colno].def, S->err, &S->cols[colno],
    oci_define_callback));
 }

 return 1;
}
