
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RLang ;


 int __run (int *,char const*,int) ;

__attribute__((used)) static int lang_v_run(RLang *lang, const char *code, int len) {
 return __run (lang, code, len);
}
