
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_bool ;
typedef int php_converter_object ;
typedef scalar_t__ UErrorCode ;
typedef int UConverter ;


 int E_WARNING ;
 int THROW_UFAILURE (int *,char*,scalar_t__) ;
 scalar_t__ U_AMBIGUOUS_ALIAS_WARNING ;
 scalar_t__ U_FAILURE (scalar_t__) ;
 scalar_t__ U_ZERO_ERROR ;
 int php_converter_set_callbacks (int *,int *) ;
 int php_error_docref (int *,int ,char*,...) ;
 int u_errorName (scalar_t__) ;
 int ucnv_close (int *) ;
 char* ucnv_getName (int *,scalar_t__*) ;
 int * ucnv_open (char const*,scalar_t__*) ;

__attribute__((used)) static zend_bool php_converter_set_encoding(php_converter_object *objval,
                                            UConverter **pcnv,
                                            const char *enc, size_t enc_len
                                           ) {
 UErrorCode error = U_ZERO_ERROR;
 UConverter *cnv = ucnv_open(enc, &error);

 if (error == U_AMBIGUOUS_ALIAS_WARNING) {
  UErrorCode getname_error = U_ZERO_ERROR;
  const char *actual_encoding = ucnv_getName(cnv, &getname_error);
  if (U_FAILURE(getname_error)) {

   actual_encoding = "(unknown)";
  }
  php_error_docref(((void*)0), E_WARNING, "Ambiguous encoding specified, using %s", actual_encoding);
 } else if (U_FAILURE(error)) {
  if (objval) {
   THROW_UFAILURE(objval, "ucnv_open", error);
  } else {
   php_error_docref(((void*)0), E_WARNING, "Error setting encoding: %d - %s", (int)error, u_errorName(error));
  }
  return 0;
 }

 if (objval && !php_converter_set_callbacks(objval, cnv)) {
  return 0;
 }

 if (*pcnv) {
  ucnv_close(*pcnv);
 }
 *pcnv = cnv;
 return 1;
}
