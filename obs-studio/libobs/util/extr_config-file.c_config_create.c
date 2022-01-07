
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_data {int file; } ;
typedef struct config_data config_t ;
typedef int FILE ;


 int bfree (struct config_data*) ;
 int bstrdup (char const*) ;
 struct config_data* bzalloc (int) ;
 int fclose (int *) ;
 int init_mutex (struct config_data*) ;
 int * os_fopen (char const*,char*) ;

config_t *config_create(const char *file)
{
 struct config_data *config;
 FILE *f;

 f = os_fopen(file, "wb");
 if (!f)
  return ((void*)0);
 fclose(f);

 config = bzalloc(sizeof(struct config_data));

 if (!init_mutex(config)) {
  bfree(config);
  return ((void*)0);
 }

 config->file = bstrdup(file);
 return config;
}
