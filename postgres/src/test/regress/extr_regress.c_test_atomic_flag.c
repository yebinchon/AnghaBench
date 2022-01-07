
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pg_atomic_flag ;


 int EXPECT_TRUE (int) ;
 int pg_atomic_clear_flag (int *) ;
 int pg_atomic_init_flag (int *) ;
 int pg_atomic_test_set_flag (int *) ;
 int pg_atomic_unlocked_test_flag (int *) ;

__attribute__((used)) static void
test_atomic_flag(void)
{
 pg_atomic_flag flag;

 pg_atomic_init_flag(&flag);
 EXPECT_TRUE(pg_atomic_unlocked_test_flag(&flag));
 EXPECT_TRUE(pg_atomic_test_set_flag(&flag));
 EXPECT_TRUE(!pg_atomic_unlocked_test_flag(&flag));
 EXPECT_TRUE(!pg_atomic_test_set_flag(&flag));
 pg_atomic_clear_flag(&flag);
 EXPECT_TRUE(pg_atomic_unlocked_test_flag(&flag));
 EXPECT_TRUE(pg_atomic_test_set_flag(&flag));
 pg_atomic_clear_flag(&flag);
}
