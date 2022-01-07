
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int registers_t ;


 int int_to_ascii (int ,char*) ;
 int kprint (char*) ;
 int tick ;

__attribute__((used)) static void timer_callback(registers_t regs) {
    tick++;
    kprint("Tick: ");

    char tick_ascii[256];
    int_to_ascii(tick, tick_ascii);
    kprint(tick_ascii);
    kprint("\n");
}
