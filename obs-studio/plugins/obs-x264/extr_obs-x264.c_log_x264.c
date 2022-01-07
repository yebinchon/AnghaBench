
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct obs_x264 {int dummy; } ;


 int UNUSED_PARAMETER (int) ;
 int info (char*,char*) ;
 int vsnprintf (char*,int,char const*,int ) ;

__attribute__((used)) static void log_x264(void *param, int level, const char *format, va_list args)
{
 struct obs_x264 *obsx264 = param;
 char str[1024];

 vsnprintf(str, 1024, format, args);
 info("%s", str);

 UNUSED_PARAMETER(level);
}
