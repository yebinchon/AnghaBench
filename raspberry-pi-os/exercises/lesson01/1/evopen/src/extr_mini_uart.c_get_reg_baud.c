
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
unsigned int get_reg_baud(unsigned int core_freq, unsigned int baud) {
    return core_freq * 1000000 / (8 * baud) - 1;
}
