
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RLineCompletion ;


 int autocomplete_process_path (int *,char const*,char const*) ;
 int r_return_if_fail (char const*) ;
 char* r_str_trim_ro (char*) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static void autocomplete_file(RLineCompletion *completion, const char *str) {
 r_return_if_fail (str);
 char *pipe = strchr (str, '>');

 if (pipe) {
  str = r_str_trim_ro (pipe + 1);
 }
 if (str && !*str) {
  autocomplete_process_path (completion, str, "./");
 } else {
  autocomplete_process_path (completion, str, str);
 }

}
