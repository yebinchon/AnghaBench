
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int priv_data; } ;
typedef TYPE_1__ AVCodecContext ;


 int AV_OPT_SEARCH_CHILDREN ;
 int LOG_WARNING ;
 scalar_t__ av_opt_set (TYPE_1__*,char*,char*,int ) ;
 int blog (int ,char*,char*,char*) ;
 char* strchr (char*,char) ;

__attribute__((used)) static bool parse_params(AVCodecContext *context, char **opts)
{
 bool ret = 1;

 if (!context || !context->priv_data)
  return 1;

 while (*opts) {
  char *opt = *opts;
  char *assign = strchr(opt, '=');

  if (assign) {
   char *name = opt;
   char *value;

   *assign = 0;
   value = assign + 1;

   if (av_opt_set(context, name, value,
           AV_OPT_SEARCH_CHILDREN)) {
    blog(LOG_WARNING, "Failed to set %s=%s", name,
         value);
    ret = 0;
   }
  }

  opts++;
 }

 return ret;
}
