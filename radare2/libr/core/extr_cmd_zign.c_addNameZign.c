
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int anal; } ;
typedef TYPE_1__ RCore ;


 int r_sign_add_name (int ,char const*,char const*) ;
 char* r_str_word_get0 (char const*,int ) ;

__attribute__((used)) static bool addNameZign(RCore *core, const char *name, const char *args0, int nargs) {
 const char *realname = r_str_word_get0 (args0, 0);
 return r_sign_add_name (core->anal, name, realname);
}
