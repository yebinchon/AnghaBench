
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RDebug ;


 int eprintf (char*) ;

__attribute__((used)) static int __esil_continue_syscall(RDebug *dbg, int pid, int num) {
 eprintf ("TODO: esil continue until syscall\n");
 return 1;
}
