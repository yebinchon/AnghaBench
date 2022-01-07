
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
typedef scalar_t__ zend_long ;
typedef int ub2 ;
typedef scalar_t__ ub1 ;
typedef int sb1 ;
struct TYPE_4__ {scalar_t__ column_count; scalar_t__ driver_data; } ;
typedef TYPE_1__ pdo_stmt_t ;
struct TYPE_5__ {int err; int stmt; } ;
typedef TYPE_2__ pdo_oci_stmt ;
typedef int dvoid ;
typedef int OCIParam ;


 int FAILURE ;
 int OCIAttrGet ;
 int OCIDescriptorFree (int *,int ) ;
 int OCIParamGet ;
 int OCI_ATTR_CHARSET_FORM ;
 int OCI_ATTR_DATA_TYPE ;
 int OCI_ATTR_IS_NULL ;
 int OCI_ATTR_PRECISION ;
 int OCI_ATTR_SCALE ;
 int OCI_DTYPE_PARAM ;
 int OCI_HTYPE_STMT ;
 int PDO_PARAM_LOB ;
 int PDO_PARAM_STR ;
 scalar_t__ SQLCS_NCHAR ;
 int STMT_CALL (int ,int ) ;
 int STMT_CALL_MSG (int ,char*,int *) ;
 int SUCCESS ;
 int add_assoc_long (int *,char*,int) ;
 int add_assoc_string (int *,char*,char*) ;
 int add_assoc_zval (int *,char*,int *) ;
 int add_next_index_string (int *,char*) ;
 int array_init (int *) ;

__attribute__((used)) static int oci_stmt_col_meta(pdo_stmt_t *stmt, zend_long colno, zval *return_value)
{
 pdo_oci_stmt *S = (pdo_oci_stmt*)stmt->driver_data;
 OCIParam *param = ((void*)0);
 ub2 dtype, precis;
 sb1 scale;
 zval flags;
 ub1 isnull, charset_form;
 if (!S->stmt) {
  return FAILURE;
 }
 if (colno >= stmt->column_count) {

  return FAILURE;
 }

 array_init(return_value);
 array_init(&flags);


 STMT_CALL(OCIParamGet, (S->stmt, OCI_HTYPE_STMT, S->err, (dvoid*)&param, colno+1));


 STMT_CALL_MSG(OCIAttrGet, "OCI_ATTR_DATA_TYPE",
   (param, OCI_DTYPE_PARAM, &dtype, 0, OCI_ATTR_DATA_TYPE, S->err));


 STMT_CALL_MSG(OCIAttrGet, "OCI_ATTR_PRECISION",
   (param, OCI_DTYPE_PARAM, &precis, 0, OCI_ATTR_PRECISION, S->err));


 STMT_CALL_MSG(OCIAttrGet, "OCI_ATTR_SCALE",
   (param, OCI_DTYPE_PARAM, &scale, 0, OCI_ATTR_SCALE, S->err));


 if (dtype == 143 || dtype == 128 || dtype == 149 || dtype == 142) {
  STMT_CALL_MSG(OCIAttrGet, "OCI_ATTR_CHARSET_FORM",
   (param, OCI_DTYPE_PARAM, &charset_form, 0, OCI_ATTR_CHARSET_FORM, S->err));
 }


 if (dtype) {

  switch (dtype) {

  case 131:
   add_assoc_string(return_value, "oci:decl_type", "TIMESTAMP");
   add_assoc_string(return_value, "native_type", "TIMESTAMP");
   break;


  case 129:
   add_assoc_string(return_value, "oci:decl_type", "TIMESTAMP WITH TIMEZONE");
   add_assoc_string(return_value, "native_type", "TIMESTAMP WITH TIMEZONE");
   break;


  case 130:
   add_assoc_string(return_value, "oci:decl_type", "TIMESTAMP WITH LOCAL TIMEZONE");
   add_assoc_string(return_value, "native_type", "TIMESTAMP WITH LOCAL TIMEZONE");
   break;


  case 136:
   add_assoc_string(return_value, "oci:decl_type", "INTERVAL YEAR TO MONTH");
   add_assoc_string(return_value, "native_type", "INTERVAL YEAR TO MONTH");
   break;


  case 137:
   add_assoc_string(return_value, "oci:decl_type", "INTERVAL DAY TO SECOND");
   add_assoc_string(return_value, "native_type", "INTERVAL DAY TO SECOND");
   break;

  case 141:
   add_assoc_string(return_value, "oci:decl_type", "DATE");
   add_assoc_string(return_value, "native_type", "DATE");
   break;
  case 140 :
  case 133:

   if (scale == -127 && precis != 0) {
    add_assoc_string(return_value, "oci:decl_type", "FLOAT");
    add_assoc_string(return_value, "native_type", "FLOAT");
   } else {
    add_assoc_string(return_value, "oci:decl_type", "NUMBER");
    add_assoc_string(return_value, "native_type", "NUMBER");
   }
   break;
  case 134:
   add_assoc_string(return_value, "oci:decl_type", "LONG");
   add_assoc_string(return_value, "native_type", "LONG");
   break;
  case 145:
   add_assoc_string(return_value, "oci:decl_type", "RAW");
   add_assoc_string(return_value, "native_type", "RAW");
   break;
  case 135:
   add_assoc_string(return_value, "oci:decl_type", "LONG RAW");
   add_assoc_string(return_value, "native_type", "LONG RAW");
   break;
  case 143:
  case 128:
   if (charset_form == SQLCS_NCHAR) {
    add_assoc_string(return_value, "oci:decl_type", "NVARCHAR2");
    add_assoc_string(return_value, "native_type", "NVARCHAR2");
   } else {
    add_assoc_string(return_value, "oci:decl_type", "VARCHAR2");
    add_assoc_string(return_value, "native_type", "VARCHAR2");
   }
   break;
  case 149:
   if (charset_form == SQLCS_NCHAR) {
    add_assoc_string(return_value, "oci:decl_type", "NCHAR");
    add_assoc_string(return_value, "native_type", "NCHAR");
   } else {
    add_assoc_string(return_value, "oci:decl_type", "CHAR");
    add_assoc_string(return_value, "native_type", "CHAR");
   }
   break;
  case 144:
   add_assoc_string(return_value, "oci:decl_type", "BLOB");
   add_next_index_string(&flags, "blob");
   add_assoc_string(return_value, "native_type", "BLOB");
   break;
  case 142:
   if (charset_form == SQLCS_NCHAR) {
    add_assoc_string(return_value, "oci:decl_type", "NCLOB");
    add_assoc_string(return_value, "native_type", "NCLOB");
   } else {
    add_assoc_string(return_value, "oci:decl_type", "CLOB");
    add_assoc_string(return_value, "native_type", "CLOB");
   }
   add_next_index_string(&flags, "blob");
   break;
  case 147:
   add_assoc_string(return_value, "oci:decl_type", "BFILE");
   add_next_index_string(&flags, "blob");
   add_assoc_string(return_value, "native_type", "BFILE");
   break;
  case 132:
   add_assoc_string(return_value, "oci:decl_type", "ROWID");
   add_assoc_string(return_value, "native_type", "ROWID");
   break;
  case 146:
  case 138:
   add_assoc_string(return_value, "oci:decl_type", "BINARY_FLOAT");
   add_assoc_string(return_value, "native_type", "BINARY_FLOAT");
   break;
  case 148:
  case 139:
   add_assoc_string(return_value, "oci:decl_type", "BINARY_DOUBLE");
   add_assoc_string(return_value, "native_type", "BINARY_DOUBLE");
   break;
  default:
   add_assoc_long(return_value, "oci:decl_type", dtype);
   add_assoc_string(return_value, "native_type", "UNKNOWN");
  }
 } else {

  add_assoc_long(return_value, "oci:decl_type", 0);
  add_assoc_string(return_value, "native_type", "NULL");
 }


 STMT_CALL_MSG(OCIAttrGet, "OCI_ATTR_IS_NULL",
   (param, OCI_DTYPE_PARAM, &isnull, 0, OCI_ATTR_IS_NULL, S->err));

 if (isnull) {
  add_next_index_string(&flags, "nullable");
 } else {
  add_next_index_string(&flags, "not_null");
 }


 switch (dtype) {
  case 147:
  case 144:
  case 142:
   add_assoc_long(return_value, "pdo_type", PDO_PARAM_LOB);
   break;
  default:
   add_assoc_long(return_value, "pdo_type", PDO_PARAM_STR);
 }

 add_assoc_long(return_value, "scale", scale);
 add_assoc_zval(return_value, "flags", &flags);

 OCIDescriptorFree(param, OCI_DTYPE_PARAM);
 return SUCCESS;
}
