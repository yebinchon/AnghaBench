
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RLang ;


 int lang_vala_file (int *,char const*,int) ;

__attribute__((used)) static int vala_run_file(RLang *lang, const char *file) {
 return lang_vala_file(lang, file, 0);
}
