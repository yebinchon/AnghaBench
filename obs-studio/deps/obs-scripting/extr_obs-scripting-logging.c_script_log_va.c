
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int va_list ;
struct TYPE_5__ {char* array; } ;
struct TYPE_6__ {int type; TYPE_1__ file; } ;
typedef TYPE_2__ obs_script_t ;
typedef int msg ;





 int blog (int,char*,char*) ;
 int callback (int ,TYPE_2__*,int,char*) ;
 int param ;
 size_t snprintf (char*,int,char*,...) ;
 int vsnprintf (char*,int,char const*,int ) ;

void script_log_va(obs_script_t *script, int level, const char *format,
     va_list args)
{
 char msg[2048];
 const char *lang = "(Unknown)";
 size_t start_len;

 if (script) {
  switch (script->type) {
  case 128:
   lang = "(Unknown language)";
   break;
  case 130:
   lang = "Lua";
   break;
  case 129:
   lang = "Python";
   break;
  }

  start_len = snprintf(msg, sizeof(msg), "[%s: %s] ", lang,
         script->file.array);
 } else {
  start_len = snprintf(msg, sizeof(msg), "[Unknown Script] ");
 }

 vsnprintf(msg + start_len, sizeof(msg) - start_len, format, args);

 if (callback)
  callback(param, script, level, msg + start_len);
 blog(level, "%s", msg);
}
