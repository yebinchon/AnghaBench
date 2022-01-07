
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT_EQ (int ,unsigned int) ;
 int to64 (char*) ;

__attribute__((used)) static const char *test_to64(void) {
  ASSERT_EQ(to64("0"), 0);
  ASSERT_EQ(to64(""), 0);
  ASSERT_EQ(to64("123"), 123);
  ASSERT_EQ(to64("-34"), -34);
  ASSERT_EQ(to64("3566626116"), 3566626116U);
  return ((void*)0);
}
