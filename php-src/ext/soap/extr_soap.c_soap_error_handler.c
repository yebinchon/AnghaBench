
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int uint32_t ;


 scalar_t__ EXPECTED (int) ;
 int SOAP_GLOBAL (int ) ;
 int call_old_error_handler (int,char const*,int const,char const*,int ) ;
 int soap_real_error_handler (int,char const*,int const,char const*,int ) ;
 int use_soap_error_handler ;

__attribute__((used)) static void soap_error_handler(int error_num, const char *error_filename, const uint32_t error_lineno, const char *format, va_list args)
{
 if (EXPECTED(!SOAP_GLOBAL(use_soap_error_handler))) {
  call_old_error_handler(error_num, error_filename, error_lineno, format, args);
 } else {
  soap_real_error_handler(error_num, error_filename, error_lineno, format, args);
 }
}
