
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zend_bool ;
struct TYPE_5__ {scalar_t__ ce; } ;
struct TYPE_6__ {TYPE_1__ obj; } ;
typedef TYPE_2__ php_converter_object ;
typedef int UErrorCode ;
typedef int UConverterToUCallback ;
typedef int UConverterFromUCallback ;
typedef int UConverter ;


 int THROW_UFAILURE (TYPE_2__*,char*,int ) ;
 scalar_t__ U_FAILURE (int ) ;
 int U_ZERO_ERROR ;
 scalar_t__ php_converter_ce ;
 scalar_t__ php_converter_from_u_callback ;
 scalar_t__ php_converter_to_u_callback ;
 int ucnv_setFromUCallBack (int *,int ,void const*,int *,int *,int *) ;
 int ucnv_setToUCallBack (int *,int ,void const*,int *,int *,int *) ;

__attribute__((used)) static inline zend_bool php_converter_set_callbacks(php_converter_object *objval, UConverter *cnv) {
 zend_bool ret = 1;
 UErrorCode error = U_ZERO_ERROR;

 if (objval->obj.ce == php_converter_ce) {



  return 1;
 }

 ucnv_setToUCallBack(cnv, (UConverterToUCallback)php_converter_to_u_callback, (const void*)objval,
                                 ((void*)0), ((void*)0), &error);
 if (U_FAILURE(error)) {
  THROW_UFAILURE(objval, "ucnv_setToUCallBack", error);
  ret = 0;
 }

 error = U_ZERO_ERROR;
 ucnv_setFromUCallBack(cnv, (UConverterFromUCallback)php_converter_from_u_callback, (const void*)objval,
                                    ((void*)0), ((void*)0), &error);
 if (U_FAILURE(error)) {
  THROW_UFAILURE(objval, "ucnv_setFromUCallBack", error);
  ret = 0;
 }
 return ret;
}
