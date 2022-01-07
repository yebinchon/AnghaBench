
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zval ;
typedef int ub4 ;
typedef int ub1 ;
struct pdo_bound_param_data {int parameter; scalar_t__ driver_data; } ;
typedef int sb4 ;
struct TYPE_2__ {int indicator; int* thing; } ;
typedef TYPE_1__ pdo_oci_bound_param ;
typedef int dvoid ;
typedef int OCIBind ;


 int E_WARNING ;
 int OCI_CONTINUE ;
 int OCI_ERROR ;
 int OCI_ONE_PIECE ;
 scalar_t__ ZVAL_IS_NULL (int *) ;
 scalar_t__ Z_ISREF (int ) ;
 int * Z_REFVAL (int ) ;
 scalar_t__ Z_STRLEN_P (int *) ;
 int* Z_STRVAL_P (int *) ;
 int php_error_docref (int *,int ,char*) ;
 int try_convert_to_string (int *) ;

__attribute__((used)) static sb4 oci_bind_input_cb(dvoid *ctx, OCIBind *bindp, ub4 iter, ub4 index, dvoid **bufpp, ub4 *alenp, ub1 *piecep, dvoid **indpp)
{
 struct pdo_bound_param_data *param = (struct pdo_bound_param_data*)ctx;
 pdo_oci_bound_param *P = (pdo_oci_bound_param*)param->driver_data;
 zval *parameter;

 if (!param) {
  php_error_docref(((void*)0), E_WARNING, "param is NULL in oci_bind_input_cb; this should not happen");
  return OCI_ERROR;
 }

 *indpp = &P->indicator;

    if (Z_ISREF(param->parameter))
  parameter = Z_REFVAL(param->parameter);
 else
  parameter = &param->parameter;

 if (P->thing) {
  *bufpp = P->thing;
  *alenp = sizeof(void*);
 } else if (ZVAL_IS_NULL(parameter)) {

  P->indicator = -1;
  *bufpp = 0;
  *alenp = -1;
 } else if (!P->thing) {

  if (!try_convert_to_string(parameter)) {
   return OCI_ERROR;
  }
  *bufpp = Z_STRVAL_P(parameter);
  *alenp = (ub4) Z_STRLEN_P(parameter);
 }

 *piecep = OCI_ONE_PIECE;
 return OCI_CONTINUE;
}
