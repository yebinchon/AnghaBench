
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dstr {int array; int member_0; } ;


 int dstr_cat (struct dstr*,char const*) ;
 int dstr_cat_ch (struct dstr*,char) ;
 int dstr_copy (struct dstr*,char const*) ;
 int dstr_copy_dstr (struct dstr*,struct dstr*) ;
 char dstr_end (struct dstr*) ;
 int dstr_free (struct dstr*) ;
 int dstr_replace (struct dstr*,char*,char const*) ;
 char const* get_module_extension () ;
 int os_file_exists (int ) ;

__attribute__((used)) static bool parse_binary_from_directory(struct dstr *parsed_bin_path,
     const char *bin_path, const char *file)
{
 struct dstr directory = {0};
 bool found = 1;

 dstr_copy(&directory, bin_path);
 dstr_replace(&directory, "%module%", file);
 if (dstr_end(&directory) != '/')
  dstr_cat_ch(&directory, '/');

 dstr_copy_dstr(parsed_bin_path, &directory);
 dstr_cat(parsed_bin_path, file);
 dstr_cat(parsed_bin_path, get_module_extension());

 if (!os_file_exists(parsed_bin_path->array)) {

  dstr_copy_dstr(parsed_bin_path, &directory);
  dstr_cat(parsed_bin_path, "lib");
  dstr_cat(parsed_bin_path, file);
  dstr_cat(parsed_bin_path, get_module_extension());


  if (!os_file_exists(parsed_bin_path->array)) {
   dstr_free(parsed_bin_path);
   found = 0;
  }
 }

 dstr_free(&directory);
 return found;
}
