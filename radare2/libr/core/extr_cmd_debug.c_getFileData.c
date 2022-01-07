
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_3__ {int rcmd; } ;
typedef TYPE_1__ RCore ;


 scalar_t__ r_cmd_alias_get (int ,char const*,int) ;
 scalar_t__ r_file_slurp (char const*,int *) ;

__attribute__((used)) static ut8*getFileData(RCore *core, const char *arg) {
 if (*arg == '$') {
  return (ut8*) r_cmd_alias_get (core->rcmd, arg, 1);
 }
 return (ut8*)r_file_slurp (arg, ((void*)0));
}
