
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_int_equal (int ,int) ;

__attribute__((used)) static void
failing_test(void **state) {

    assert_int_equal(0, 42);
}
