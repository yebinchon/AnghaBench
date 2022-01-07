
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int int64_t ;
typedef scalar_t__ int32_t ;


 int test_random () ;
 scalar_t__* test_random_state ;

void test_random_seed(uint32_t sd) {
    int i;
    int32_t s;
    const unsigned int mod = (1u << 31) - 1;

    test_random_state[0] = sd;
    for (i = 1; i < 31; i++) {
        s = (int32_t)test_random_state[i - 1];
        test_random_state[i] = (uint32_t)((16807 * (int64_t)s) % mod);
    }
    for (i = 34; i < 344; i++)
        test_random();
}
