
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int anal; } ;
typedef TYPE_1__ RCore ;


 int r_sign_add_hash (int ,char const*,int,char const*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static bool addHashZign(RCore *core, const char *name, int type, const char *args0, int nargs) {
 if (!args0) {
  return 0;
 }
 int len = strlen (args0);
 if (!len) {
  return 0;
 }
 return r_sign_add_hash (core->anal, name, type, args0, len);
}
