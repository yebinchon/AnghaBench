
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* CLIR_G (int ) ;
 int MIN (size_t,int) ;
 scalar_t__ VCWD_POPEN (scalar_t__*,char*) ;
 size_t fwrite (char const*,int,int ,scalar_t__) ;
 int pager ;
 scalar_t__ pager_pipe ;
 int prompt_str ;
 int smart_str_appendl (scalar_t__*,char const*,size_t) ;

__attribute__((used)) static size_t readline_shell_write(const char *str, size_t str_length)
{
 if (CLIR_G(prompt_str)) {
  smart_str_appendl(CLIR_G(prompt_str), str, str_length);
  return str_length;
 }

 if (CLIR_G(pager) && *CLIR_G(pager) && !pager_pipe) {
  pager_pipe = VCWD_POPEN(CLIR_G(pager), "w");
 }
 if (pager_pipe) {
  return fwrite(str, 1, MIN(str_length, 16384), pager_pipe);
 }

 return -1;
}
