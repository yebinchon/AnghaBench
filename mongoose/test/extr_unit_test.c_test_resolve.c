
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int ASSERT (int) ;
 int ASSERT_EQ (scalar_t__,int ) ;
 int ASSERT_STREQ (char*,char*) ;
 scalar_t__ mg_resolve (char*,char*,int) ;

__attribute__((used)) static const char *test_resolve(void) {
  char buf[20];

  ASSERT(mg_resolve("localhost", buf, sizeof(buf)) > 0);
  ASSERT_STREQ(buf, "127.0.0.1");

  ASSERT_EQ(mg_resolve("please_dont_name_a_host_like_ths", buf, sizeof(buf)),
            0);
  return ((void*)0);
}
