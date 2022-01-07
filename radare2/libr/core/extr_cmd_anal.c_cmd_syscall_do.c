
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;
typedef int st64 ;
typedef int RCore ;


 char* cmd_syscall_dostr (int *,int ,int ) ;
 int free (char*) ;
 int r_cons_println (char*) ;

__attribute__((used)) static void cmd_syscall_do(RCore *core, st64 n, ut64 addr) {
 char *msg = cmd_syscall_dostr (core, n, addr);
 if (msg) {
  r_cons_println (msg);
  free (msg);
 }
}
