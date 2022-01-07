
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RDebug ;


 int eprintf (char*) ;

__attribute__((used)) static int __esil_continue(RDebug *dbg, int pid, int tid, int sig) {
 eprintf ("TODO continue\n");
 return 1;
}
