
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RUN_TEST (int ) ;
 int ksft_exit_fail_msg (char*,int,int ) ;
 int ksft_exit_pass () ;
 int ksft_get_fail_cnt () ;
 int ksft_print_header () ;
 int ksft_print_msg (char*) ;
 int ksft_set_plan (int) ;
 int ksft_test_num () ;
 int sync_api_supported () ;
 int test_alloc_fence ;
 int test_alloc_fence_negative ;
 int test_alloc_timeline ;
 int test_consumer_stress_multi_producer_single_consumer ;
 int test_fence_merge_same_fence ;
 int test_fence_multi_timeline_wait ;
 int test_fence_one_timeline_merge ;
 int test_fence_one_timeline_wait ;
 int test_merge_stress_random_merge ;
 int test_stress_two_threads_shared_timeline ;

int main(void)
{
 int err;

 ksft_print_header();
 ksft_set_plan(3 + 7);

 sync_api_supported();

 ksft_print_msg("[RUN]\tTesting sync framework\n");

 RUN_TEST(test_alloc_timeline);
 RUN_TEST(test_alloc_fence);
 RUN_TEST(test_alloc_fence_negative);

 RUN_TEST(test_fence_one_timeline_wait);
 RUN_TEST(test_fence_one_timeline_merge);
 RUN_TEST(test_fence_merge_same_fence);
 RUN_TEST(test_fence_multi_timeline_wait);
 RUN_TEST(test_stress_two_threads_shared_timeline);
 RUN_TEST(test_consumer_stress_multi_producer_single_consumer);
 RUN_TEST(test_merge_stress_random_merge);

 err = ksft_get_fail_cnt();
 if (err)
  ksft_exit_fail_msg("%d out of %d sync tests failed\n",
     err, ksft_test_num());


 return ksft_exit_pass();
}
