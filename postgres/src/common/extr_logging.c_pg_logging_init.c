
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PG_LOG_INFO ;
 void* SGR_ERROR_DEFAULT ;
 void* SGR_LOCUS_DEFAULT ;
 void* SGR_WARNING_DEFAULT ;
 int _IONBF ;
 int __pg_log_level ;
 int fileno (int ) ;
 int free (char*) ;
 int get_progname (char const*) ;
 char* getenv (char*) ;
 scalar_t__ isatty (int ) ;
 int progname ;
 int setvbuf (int ,int *,int ,int ) ;
 void* sgr_error ;
 void* sgr_locus ;
 void* sgr_warning ;
 int stderr ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char const*,char*) ;
 void* strdup (char const*) ;
 char* strtok (char*,char*) ;

void
pg_logging_init(const char *argv0)
{
 const char *pg_color_env = getenv("PG_COLOR");
 bool log_color = 0;


 setvbuf(stderr, ((void*)0), _IONBF, 0);

 progname = get_progname(argv0);
 __pg_log_level = PG_LOG_INFO;

 if (pg_color_env)
 {
  if (strcmp(pg_color_env, "always") == 0 ||
   (strcmp(pg_color_env, "auto") == 0 && isatty(fileno(stderr))))
   log_color = 1;
 }

 if (log_color)
 {
  const char *pg_colors_env = getenv("PG_COLORS");

  if (pg_colors_env)
  {
   char *colors = strdup(pg_colors_env);

   if (colors)
   {
    for (char *token = strtok(colors, ":"); token; token = strtok(((void*)0), ":"))
    {
     char *e = strchr(token, '=');

     if (e)
     {
      char *name;
      char *value;

      *e = '\0';
      name = token;
      value = e + 1;

      if (strcmp(name, "error") == 0)
       sgr_error = strdup(value);
      if (strcmp(name, "warning") == 0)
       sgr_warning = strdup(value);
      if (strcmp(name, "locus") == 0)
       sgr_locus = strdup(value);
     }
    }

    free(colors);
   }
  }
  else
  {
   sgr_error = SGR_ERROR_DEFAULT;
   sgr_warning = SGR_WARNING_DEFAULT;
   sgr_locus = SGR_LOCUS_DEFAULT;
  }
 }
}
