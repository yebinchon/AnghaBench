
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct log_context {char* str; int print_prefix; } ;
 int LOG_DEBUG ;
 int LOG_ERROR ;
 int LOG_INFO ;
 int LOG_WARNING ;
 int av_log_format_line (void*,int,char const*,int ,char*,int,int *) ;
 int blog (int,char*,char*) ;
 struct log_context* create_or_fetch_log_context (void*) ;
 int destroy_log_context (struct log_context*) ;
 int strlen (char*) ;

__attribute__((used)) static void ffmpeg_log_callback(void *context, int level, const char *format,
    va_list args)
{
 if (format == ((void*)0))
  return;

 struct log_context *log_context = create_or_fetch_log_context(context);

 char *str = log_context->str;

 av_log_format_line(context, level, format, args, str + strlen(str),
      (int)(sizeof(log_context->str) - strlen(str)),
      &log_context->print_prefix);

 int obs_level;
 switch (level) {
 case 130:
 case 132:
  obs_level = LOG_ERROR;
  break;
 case 133:
 case 128:
  obs_level = LOG_WARNING;
  break;
 case 131:
 case 129:
  obs_level = LOG_INFO;
  break;
 case 134:
 default:
  obs_level = LOG_DEBUG;
 }

 if (!log_context->print_prefix)
  return;

 char *str_end = str + strlen(str) - 1;
 while (str < str_end) {
  if (*str_end != '\n')
   break;
  *str_end-- = '\0';
 }

 if (str_end <= str)
  goto cleanup;

 blog(obs_level, "[ffmpeg] %s", str);

cleanup:
 destroy_log_context(log_context);
}
