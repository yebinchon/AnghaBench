
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int ASSERT_EQ (int ,int) ;
 int mg_check_ip_acl (char*,int) ;

__attribute__((used)) static const char *test_check_ip_acl(void) {
  uint32_t ip = 0x01020304;
  ASSERT_EQ(mg_check_ip_acl(((void*)0), ip), 1);
  ASSERT_EQ(mg_check_ip_acl("", ip), 1);
  ASSERT_EQ(mg_check_ip_acl("invalid", ip), -1);
  ASSERT_EQ(mg_check_ip_acl("-0.0.0.0/0", ip), 0);
  ASSERT_EQ(mg_check_ip_acl("-0.0.0.0/0,+1.0.0.0/8", ip), 1);
  ASSERT_EQ(mg_check_ip_acl("-0.0.0.0/0,+1.2.3.4", ip), 1);
  ASSERT_EQ(mg_check_ip_acl("-0.0.0.0/0,+1.0.0.0/16", ip), 0);
  return ((void*)0);
}
