
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int AV_LOG_INFO ;
 int LOG_DEBUG ;
 int UNUSED_PARAMETER (void*) ;
 int blogva (int ,char const*,int ) ;

__attribute__((used)) static void ffmpeg_log_callback(void *param, int level, const char *format,
    va_list args)
{
 if (level <= AV_LOG_INFO)
  blogva(LOG_DEBUG, format, args);

 UNUSED_PARAMETER(param);
}
