
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RCore ;


 int r_core_cmdf (int *,char*) ;

__attribute__((used)) static void cmd_anal_jumps(RCore *core, const char *input) {
 r_core_cmdf (core, "af @@= `ax~ref.code.jmp[1]`");
}
