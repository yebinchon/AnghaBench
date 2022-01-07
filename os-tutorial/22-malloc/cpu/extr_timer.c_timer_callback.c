
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int registers_t ;


 int UNUSED (int ) ;
 int tick ;

__attribute__((used)) static void timer_callback(registers_t regs) {
    tick++;
    UNUSED(regs);
}
