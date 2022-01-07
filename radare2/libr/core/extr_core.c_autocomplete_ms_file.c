
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* rfs; } ;
struct TYPE_5__ {char** cwd; } ;
typedef int RLineCompletion ;
typedef TYPE_2__ RCore ;


 int autocomplete_ms_path (int *,TYPE_2__*,char const*,char const*) ;
 int r_return_if_fail (char const*) ;
 char* r_str_trim_ro (char*) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static void autocomplete_ms_file(RCore* core, RLineCompletion *completion, const char *str) {
 r_return_if_fail (str);
 char *pipe = strchr (str, '>');
 char *path = (core->rfs && *(core->rfs->cwd)) ? *(core->rfs->cwd): "/";
 if (pipe) {
  str = r_str_trim_ro (pipe + 1);
 }
 if (str && !*str) {
  autocomplete_ms_path (completion, core, str, path);
 } else {
  autocomplete_ms_path (completion, core, str, str);
 }
}
