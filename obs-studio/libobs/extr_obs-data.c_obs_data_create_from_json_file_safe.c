
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dstr {int array; int member_0; } ;
typedef int obs_data_t ;


 int LOG_WARNING ;
 int blog (int ,char*) ;
 int dstr_cat (struct dstr*,char const*) ;
 int dstr_copy (struct dstr*,char const*) ;
 int dstr_free (struct dstr*) ;
 int * obs_data_create_from_json_file (char const*) ;
 scalar_t__ os_file_exists (int ) ;
 int os_rename (int ,char const*) ;

obs_data_t *obs_data_create_from_json_file_safe(const char *json_file,
      const char *backup_ext)
{
 obs_data_t *file_data = obs_data_create_from_json_file(json_file);
 if (!file_data && backup_ext && *backup_ext) {
  struct dstr backup_file = {0};

  dstr_copy(&backup_file, json_file);
  if (*backup_ext != '.')
   dstr_cat(&backup_file, ".");
  dstr_cat(&backup_file, backup_ext);

  if (os_file_exists(backup_file.array)) {
   blog(LOG_WARNING,
        "obs-data.c: "
        "[obs_data_create_from_json_file_safe] "
        "attempting backup file");



   os_rename(backup_file.array, json_file);

   file_data = obs_data_create_from_json_file(json_file);
  }

  dstr_free(&backup_file);
 }

 return file_data;
}
