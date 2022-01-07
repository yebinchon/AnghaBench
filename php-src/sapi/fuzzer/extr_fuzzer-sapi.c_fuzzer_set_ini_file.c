
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ php_ini_path_override; } ;


 int free (scalar_t__) ;
 TYPE_1__ fuzzer_module ;
 scalar_t__ strdup (char const*) ;

void fuzzer_set_ini_file(const char *file)
{
 if (fuzzer_module.php_ini_path_override) {
  free(fuzzer_module.php_ini_path_override);
 }
 fuzzer_module.php_ini_path_override = strdup(file);
}
