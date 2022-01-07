
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int gd_error_method (int,char const*,int ) ;

__attribute__((used)) static void _gd_error_ex(int priority, const char *format, va_list args)
{
 if (gd_error_method) {
  gd_error_method(priority, format, args);
 }
}
