
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dstr {char* array; int member_0; } ;
struct TYPE_4__ {size_t num; TYPE_1__* array; } ;
struct TYPE_3__ {int array; } ;


 scalar_t__ check_path (char const*,int ,struct dstr*) ;
 TYPE_2__ core_module_paths ;
 int dstr_free (struct dstr*) ;
 char* find_libobs_data_file (char const*) ;

char *obs_find_data_file(const char *file)
{
 struct dstr path = {0};

 char *result = find_libobs_data_file(file);
 if (result)
  return result;

 for (size_t i = 0; i < core_module_paths.num; ++i) {
  if (check_path(file, core_module_paths.array[i].array, &path))
   return path.array;
 }

 dstr_free(&path);
 return ((void*)0);
}
