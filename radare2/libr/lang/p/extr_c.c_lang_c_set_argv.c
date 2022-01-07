
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RLang ;


 int ac ;
 char const** av ;

__attribute__((used)) static bool lang_c_set_argv(RLang *lang, int argc, const char **argv) {
 ac = argc;
 av = argv;
 return 1;
}
