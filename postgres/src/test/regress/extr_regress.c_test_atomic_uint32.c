
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int pg_atomic_uint32 ;


 int ERROR ;
 int EXPECT_EQ_U32 (int,int) ;
 int EXPECT_TRUE (int) ;
 int INT_MAX ;
 int PG_INT16_MAX ;
 int PG_INT16_MIN ;
 int UINT_MAX ;
 int elog (int ,char*) ;
 int pg_atomic_add_fetch_u32 (int *,int) ;
 int pg_atomic_compare_exchange_u32 (int *,int*,int) ;
 int pg_atomic_exchange_u32 (int *,int) ;
 int pg_atomic_fetch_add_u32 (int *,int) ;
 int pg_atomic_fetch_and_u32 (int *,int) ;
 int pg_atomic_fetch_or_u32 (int *,int) ;
 int pg_atomic_fetch_sub_u32 (int *,int) ;
 int pg_atomic_init_u32 (int *,int ) ;
 int pg_atomic_read_u32 (int *) ;
 int pg_atomic_sub_fetch_u32 (int *,int) ;
 int pg_atomic_write_u32 (int *,int) ;

__attribute__((used)) static void
test_atomic_uint32(void)
{
 pg_atomic_uint32 var;
 uint32 expected;
 int i;

 pg_atomic_init_u32(&var, 0);
 EXPECT_EQ_U32(pg_atomic_read_u32(&var), 0);
 pg_atomic_write_u32(&var, 3);
 EXPECT_EQ_U32(pg_atomic_read_u32(&var), 3);
 EXPECT_EQ_U32(pg_atomic_fetch_add_u32(&var, pg_atomic_read_u32(&var) - 2),
      3);
 EXPECT_EQ_U32(pg_atomic_fetch_sub_u32(&var, 1), 4);
 EXPECT_EQ_U32(pg_atomic_sub_fetch_u32(&var, 3), 0);
 EXPECT_EQ_U32(pg_atomic_add_fetch_u32(&var, 10), 10);
 EXPECT_EQ_U32(pg_atomic_exchange_u32(&var, 5), 10);
 EXPECT_EQ_U32(pg_atomic_exchange_u32(&var, 0), 5);


 EXPECT_EQ_U32(pg_atomic_fetch_add_u32(&var, INT_MAX), 0);
 EXPECT_EQ_U32(pg_atomic_fetch_add_u32(&var, INT_MAX), INT_MAX);
 pg_atomic_fetch_add_u32(&var, 2);
 EXPECT_EQ_U32(pg_atomic_fetch_add_u32(&var, PG_INT16_MAX), 0);
 EXPECT_EQ_U32(pg_atomic_fetch_add_u32(&var, PG_INT16_MAX + 1),
      PG_INT16_MAX);
 EXPECT_EQ_U32(pg_atomic_fetch_add_u32(&var, PG_INT16_MIN),
      2 * PG_INT16_MAX + 1);
 EXPECT_EQ_U32(pg_atomic_fetch_add_u32(&var, PG_INT16_MIN - 1),
      PG_INT16_MAX);
 pg_atomic_fetch_add_u32(&var, 1);
 EXPECT_EQ_U32(pg_atomic_read_u32(&var), UINT_MAX);
 EXPECT_EQ_U32(pg_atomic_fetch_sub_u32(&var, INT_MAX), UINT_MAX);
 EXPECT_EQ_U32(pg_atomic_read_u32(&var), (uint32) INT_MAX + 1);
 EXPECT_EQ_U32(pg_atomic_sub_fetch_u32(&var, INT_MAX), 1);
 pg_atomic_sub_fetch_u32(&var, 1);


 expected = 10;
 EXPECT_TRUE(!pg_atomic_compare_exchange_u32(&var, &expected, 1));


 for (i = 0; i < 1000; i++)
 {
  expected = 0;
  if (!pg_atomic_compare_exchange_u32(&var, &expected, 1))
   break;
 }
 if (i == 1000)
  elog(ERROR, "atomic_compare_exchange_u32() never succeeded");
 EXPECT_EQ_U32(pg_atomic_read_u32(&var), 1);
 pg_atomic_write_u32(&var, 0);


 EXPECT_TRUE(!(pg_atomic_fetch_or_u32(&var, 1) & 1));
 EXPECT_TRUE(pg_atomic_fetch_or_u32(&var, 2) & 1);
 EXPECT_EQ_U32(pg_atomic_read_u32(&var), 3);

 EXPECT_EQ_U32(pg_atomic_fetch_and_u32(&var, ~2) & 3, 3);
 EXPECT_EQ_U32(pg_atomic_fetch_and_u32(&var, ~1), 1);

 EXPECT_EQ_U32(pg_atomic_fetch_and_u32(&var, ~0), 0);
}
