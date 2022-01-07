
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RLang ;


 int lang_pipe_run (int *,char const*,int) ;

__attribute__((used)) static int lang_pipe_file(RLang *lang, const char *file) {
 return lang_pipe_run (lang, file, -1);
}
