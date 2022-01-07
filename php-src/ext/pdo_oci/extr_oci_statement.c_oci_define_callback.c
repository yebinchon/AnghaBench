
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ub4 ;
typedef int ub2 ;
typedef int ub1 ;
typedef int sb4 ;
struct TYPE_2__ {int dtype; int indicator; int datalen; int * data; } ;
typedef TYPE_1__ pdo_oci_column ;
typedef int dvoid ;
typedef int OCIDefine ;


 int E_WARNING ;
 int OCI_CONTINUE ;
 int OCI_ERROR ;
 int OCI_ONE_PIECE ;


 int php_error_docref (int *,int ,char*) ;

__attribute__((used)) static sb4 oci_define_callback(dvoid *octxp, OCIDefine *define, ub4 iter, dvoid **bufpp,
  ub4 **alenpp, ub1 *piecep, dvoid **indpp, ub2 **rcodepp)
{
 pdo_oci_column *col = (pdo_oci_column*)octxp;

 switch (col->dtype) {
  case 129:
  case 128:
   *piecep = OCI_ONE_PIECE;
   *bufpp = col->data;
   *alenpp = &col->datalen;
   *indpp = (dvoid *)&col->indicator;
   break;

  default:
   php_error_docref(((void*)0), E_WARNING,
    "unhandled datatype in oci_define_callback; this should not happen");
   return OCI_ERROR;
 }

 return OCI_CONTINUE;
}
