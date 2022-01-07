
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int h; int v; int y; int x; int buttons; } ;


 int debug_mouse ;
 TYPE_1__ mouse_report ;
 int mousekey_accel ;
 int mousekey_repeat ;
 int phex (int ) ;
 int print (char*) ;
 int print_dec (int ) ;
 int print_decs (int ) ;

__attribute__((used)) static void mousekey_debug(void) {
    if (!debug_mouse) return;
    print("mousekey [btn|x y v h](rep/acl): [");
    phex(mouse_report.buttons);
    print("|");
    print_decs(mouse_report.x);
    print(" ");
    print_decs(mouse_report.y);
    print(" ");
    print_decs(mouse_report.v);
    print(" ");
    print_decs(mouse_report.h);
    print("](");
    print_dec(mousekey_repeat);
    print("/");
    print_dec(mousekey_accel);
    print(")\n");
}
