
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_3__ {int anal; int num; } ;
typedef TYPE_1__ RCore ;


 int UT64_MAX ;
 int eprintf (char*) ;
 int r_num_get (int ,char const*) ;
 int r_sign_add_addr (int ,char const*,int ) ;
 char* r_str_word_get0 (char const*,int ) ;

__attribute__((used)) static bool addOffsetZign(RCore *core, const char *name, const char *args0, int nargs) {
 const char *offstr = ((void*)0);
 ut64 offset = UT64_MAX;

 if (nargs != 1) {
  eprintf ("error: invalid syntax\n");
  return 0;
 }

 offstr = r_str_word_get0 (args0, 0);
 offset = r_num_get (core->num, offstr);

 return r_sign_add_addr (core->anal, name, offset);
}
