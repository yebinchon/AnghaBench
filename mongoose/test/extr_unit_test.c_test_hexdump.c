
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int got ;


 int ASSERT_EQ (int ,int) ;
 int ASSERT_STREQ (char*,char const*) ;
 int mg_hexdump (char const*,scalar_t__,char*,int) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static const char *test_hexdump(void) {
  const char *src = "\1\2\3\4abcd";
  char got[256];

  const char *want =
      "0000  01 02 03 04 61 62 63 64"
      "                          ....abcd\n";
  ASSERT_EQ(mg_hexdump(src, strlen(src), got, sizeof(got)), (int) strlen(want));
  ASSERT_STREQ(got, want);
  return ((void*)0);
}
