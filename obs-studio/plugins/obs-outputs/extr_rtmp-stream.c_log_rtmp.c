
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int LOG_INFO ;
 int RTMP_LOGWARNING ;
 int blogva (int ,char const*,int ) ;

__attribute__((used)) static void log_rtmp(int level, const char *format, va_list args)
{
 if (level > RTMP_LOGWARNING)
  return;

 blogva(LOG_INFO, format, args);
}
