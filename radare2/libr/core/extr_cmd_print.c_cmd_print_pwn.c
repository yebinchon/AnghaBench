
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RCore ;


 int r_cons_printf (char*) ;

__attribute__((used)) static void cmd_print_pwn(const RCore *core) {
 r_cons_printf ("easter egg license has expired\n");
}
