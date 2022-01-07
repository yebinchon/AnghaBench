
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int eprintf (char*) ;
 int esil_anal_stop ;

__attribute__((used)) static void cccb(void *u) {
 esil_anal_stop = 1;
 eprintf ("^C\n");
}
