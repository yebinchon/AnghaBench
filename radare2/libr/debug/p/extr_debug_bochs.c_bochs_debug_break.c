
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bBreak ;
 int bochs_cmd_stop (int ) ;
 int desc ;
 int eprintf (char*) ;

__attribute__((used)) static void bochs_debug_break(void *u) {
 eprintf("bochs_debug_break: Sending break...\n");
 bochs_cmd_stop (desc);
 bBreak = 1;
}
