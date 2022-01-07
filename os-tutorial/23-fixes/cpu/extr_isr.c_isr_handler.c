
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t int_no; } ;
typedef TYPE_1__ registers_t ;


 char** exception_messages ;
 int int_to_ascii (size_t,char*) ;
 int kprint (char*) ;

void isr_handler(registers_t *r) {
    kprint("received interrupt: ");
    char s[3];
    int_to_ascii(r->int_no, s);
    kprint(s);
    kprint("\n");
    kprint(exception_messages[r->int_no]);
    kprint("\n");
}
