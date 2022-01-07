
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct Test {unsigned int const producer_started; unsigned int const producer_done; int not_active; int total_count; int consumer_done; } ;


 int memset (struct Test*,int ,int) ;
 int pixie_begin_thread (int ,int ,struct Test*) ;
 int pixie_usleep (int) ;
 int test_consumer_thread ;
 int test_producer_thread ;

__attribute__((used)) static uint64_t
run_test(struct Test *test)
{
    unsigned i;
    const unsigned THREADS = 1;

    memset(test, 0, sizeof(*test));


    for (i=0; i<THREADS; i++) {
        pixie_begin_thread(test_producer_thread, 0, test);
    }


    while (test->producer_started < THREADS)
        pixie_usleep(10);

    pixie_begin_thread(test_consumer_thread, 0, test);


    while (test->producer_done < THREADS)
        pixie_usleep(10);



    test->not_active = 1;



    while (!test->consumer_done)
        pixie_usleep(10);

    return test->total_count;
}
