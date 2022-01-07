
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int LOG_INFO ;
 int UNUSED_PARAMETER (int) ;
 int blogva (int ,char const*,int ) ;

__attribute__((used)) static void log_ftl(int level, const char *format, va_list args)
{
 blogva(LOG_INFO, format, args);
 UNUSED_PARAMETER(level);
}
