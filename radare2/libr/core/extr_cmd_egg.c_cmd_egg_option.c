
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REgg ;


 int free (char*) ;
 int r_cons_println (char*) ;
 char* r_egg_option_get (int *,char const*) ;
 int r_egg_option_set (int *,char const*,char const*) ;

__attribute__((used)) static void cmd_egg_option(REgg *egg, const char *key, const char *input) {
 if (!*input) {
  return;
 }
 if (input[1] != ' ') {
  char *a = r_egg_option_get (egg, key);
  if (a) {
   r_cons_println (a);
   free (a);
  }
 } else {
  r_egg_option_set (egg, key, input + 2);
 }
}
