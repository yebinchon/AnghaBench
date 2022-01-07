
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;
typedef int pg_atomic_uint64 ;


 int ERROR ;
 int EXPECT_EQ_U64 (int,int) ;
 int EXPECT_TRUE (int) ;
 int elog (int ,char*) ;
 int pg_atomic_add_fetch_u64 (int *,int) ;
 int pg_atomic_compare_exchange_u64 (int *,int*,int) ;
 int pg_atomic_exchange_u64 (int *,int) ;
 int pg_atomic_fetch_add_u64 (int *,int) ;
 int pg_atomic_fetch_and_u64 (int *,int) ;
 int pg_atomic_fetch_or_u64 (int *,int) ;
 int pg_atomic_fetch_sub_u64 (int *,int) ;
 int pg_atomic_init_u64 (int *,int ) ;
 int pg_atomic_read_u64 (int *) ;
 int pg_atomic_sub_fetch_u64 (int *,int) ;
 int pg_atomic_write_u64 (int *,int) ;

__attribute__((used)) static void
test_atomic_uint64(void)
{
 pg_atomic_uint64 var;
 uint64 expected;
 int i;

 pg_atomic_init_u64(&var, 0);
 EXPECT_EQ_U64(pg_atomic_read_u64(&var), 0);
 pg_atomic_write_u64(&var, 3);
 EXPECT_EQ_U64(pg_atomic_read_u64(&var), 3);
 EXPECT_EQ_U64(pg_atomic_fetch_add_u64(&var, pg_atomic_read_u64(&var) - 2),
      3);
 EXPECT_EQ_U64(pg_atomic_fetch_sub_u64(&var, 1), 4);
 EXPECT_EQ_U64(pg_atomic_sub_fetch_u64(&var, 3), 0);
 EXPECT_EQ_U64(pg_atomic_add_fetch_u64(&var, 10), 10);
 EXPECT_EQ_U64(pg_atomic_exchange_u64(&var, 5), 10);
 EXPECT_EQ_U64(pg_atomic_exchange_u64(&var, 0), 5);


 expected = 10;
 EXPECT_TRUE(!pg_atomic_compare_exchange_u64(&var, &expected, 1));


 for (i = 0; i < 100; i++)
 {
  expected = 0;
  if (!pg_atomic_compare_exchange_u64(&var, &expected, 1))
   break;
 }
 if (i == 100)
  elog(ERROR, "atomic_compare_exchange_u64() never succeeded");
 EXPECT_EQ_U64(pg_atomic_read_u64(&var), 1);

 pg_atomic_write_u64(&var, 0);


 EXPECT_TRUE(!(pg_atomic_fetch_or_u64(&var, 1) & 1));
 EXPECT_TRUE(pg_atomic_fetch_or_u64(&var, 2) & 1);
 EXPECT_EQ_U64(pg_atomic_read_u64(&var), 3);

 EXPECT_EQ_U64((pg_atomic_fetch_and_u64(&var, ~2) & 3), 3);
 EXPECT_EQ_U64(pg_atomic_fetch_and_u64(&var, ~1), 1);

 EXPECT_EQ_U64(pg_atomic_fetch_and_u64(&var, ~0), 0);
}
