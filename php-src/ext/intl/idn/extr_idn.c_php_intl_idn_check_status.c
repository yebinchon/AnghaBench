
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UErrorCode ;


 int FAILURE ;
 int SUCCESS ;
 scalar_t__ U_FAILURE (int ) ;
 int efree (char*) ;
 int get_active_function_name () ;
 int intl_error_set_code (int *,int ) ;
 int intl_error_set_custom_msg (int *,char*,int) ;
 int spprintf (char**,int ,char*,int ,char const*) ;

__attribute__((used)) static int php_intl_idn_check_status(UErrorCode err, const char *msg)
{
 intl_error_set_code(((void*)0), err);
 if (U_FAILURE(err)) {
  char *buff;
  spprintf(&buff, 0, "%s: %s",
   get_active_function_name(),
   msg);
  intl_error_set_custom_msg(((void*)0), buff, 1);
  efree(buff);
  return FAILURE;
 }

 return SUCCESS;
}
