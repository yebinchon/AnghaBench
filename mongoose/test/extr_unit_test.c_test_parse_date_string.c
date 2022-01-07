
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT_EQ (int ,int) ;
 int mg_parse_date_string (char*) ;

__attribute__((used)) static const char *test_parse_date_string(void) {
  ASSERT_EQ(mg_parse_date_string("Sat, 31 Oct 2019 10:51:12 GMT"), 1572519072);
  ASSERT_EQ(mg_parse_date_string("31/Oct/2019 10:51:12 GMT"), 1572519072);
  ASSERT_EQ(mg_parse_date_string("31 Oct 2019 10:51:12 GMT"), 1572519072);
  ASSERT_EQ(mg_parse_date_string("31-Oct-2019 10:51:12 GMT"), 1572519072);
  return ((void*)0);
}
