
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RCore ;


 int r_core_cmd (int *,char*,int ) ;

void __esil_init(RCore *core) {
 r_core_cmd (core, "aeim", 0);
 r_core_cmd (core, "aeip", 0);
}
