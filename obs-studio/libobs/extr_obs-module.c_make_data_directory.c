
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dstr {char* array; int member_0; } ;


 scalar_t__ astrcmpi_n (char const*,char*,int) ;
 int make_data_dir (struct dstr*,char const*,char const*) ;
 int os_file_exists (char*) ;

__attribute__((used)) static char *make_data_directory(const char *module_name, const char *data_dir)
{
 struct dstr parsed_data_dir = {0};
 bool found = 0;

 make_data_dir(&parsed_data_dir, data_dir, module_name);

 found = os_file_exists(parsed_data_dir.array);

 if (!found && astrcmpi_n(module_name, "lib", 3) == 0)
  make_data_dir(&parsed_data_dir, data_dir, module_name + 3);

 return parsed_data_dir.array;
}
