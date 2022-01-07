
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; } ;
struct TYPE_4__ {TYPE_1__ buffer; int prompt; } ;


 int Color_RESET ;
 TYPE_2__ I ;
 int r_cons_clear_line (int ) ;
 int r_cons_flush () ;
 int r_cons_printf (char*,int ,int ,int ) ;

__attribute__((used)) static void print_rline_task(void *core) {
 r_cons_clear_line (0);
 r_cons_printf ("%s%s%s", Color_RESET, I.prompt, I.buffer.data);
 r_cons_flush ();
}
