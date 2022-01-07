
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_int_equal (int,int) ;

__attribute__((used)) static void
int_test_success(void **state) {
    int *answer = *state;
    assert_int_equal(*answer, 42);
}
