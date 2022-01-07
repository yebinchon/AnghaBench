
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_str {char* p; int len; } ;


 int ASSERT (int) ;
 int ASSERT_EQ (scalar_t__,int ) ;
 scalar_t__ mg_vcasecmp (struct mg_str*,char*) ;
 scalar_t__ mg_vcmp (struct mg_str*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static const char *test_strcmp(void) {
  struct mg_str s1;

  s1.p = "aa";
  s1.len = strlen(s1.p);
  ASSERT_EQ(mg_vcasecmp(&s1, "aa"), 0);
  ASSERT_EQ(mg_vcmp(&s1, "aa"), 0);
  ASSERT(mg_vcasecmp(&s1, "ab") < 0);
  ASSERT(mg_vcmp(&s1, "ab") < 0);
  ASSERT(mg_vcasecmp(&s1, "abb") < 0);
  ASSERT(mg_vcmp(&s1, "abb") < 0);
  ASSERT(mg_vcasecmp(&s1, "b") < 0);
  ASSERT(mg_vcmp(&s1, "b") < 0);
  return ((void*)0);
}
