
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int int32_t ;
typedef int UChar ;
typedef int MessageFormatter_object ;


 int INTL_DATA_ERROR_CODE (int *) ;
 int INTL_METHOD_RETVAL_UTF8 (int *,int *,int ,int) ;
 int RETURN_FALSE ;
 scalar_t__ U_FAILURE (int ) ;
 int Z_ARRVAL_P (int *) ;
 int efree (int *) ;
 int umsg_format_helper (int *,int ,int **,int *) ;

__attribute__((used)) static void msgfmt_do_format(MessageFormatter_object *mfo, zval *args, zval *return_value)
{
 UChar* formatted = ((void*)0);
 int32_t formatted_len = 0;

 umsg_format_helper(mfo, Z_ARRVAL_P(args), &formatted, &formatted_len);

 if (U_FAILURE(INTL_DATA_ERROR_CODE(mfo))) {
  if (formatted) {
   efree(formatted);
  }
  RETURN_FALSE;
 } else {
  INTL_METHOD_RETVAL_UTF8(mfo, formatted, formatted_len, 1);
 }
}
