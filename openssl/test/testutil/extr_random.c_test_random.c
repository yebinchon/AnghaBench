
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int* test_random_state ;

uint32_t test_random(void) {
    static unsigned int pos = 3;

    if (pos == 31)
        pos = 0;
    test_random_state[pos] += test_random_state[(pos + 28) % 31];
    return test_random_state[pos++] / 2;
}
