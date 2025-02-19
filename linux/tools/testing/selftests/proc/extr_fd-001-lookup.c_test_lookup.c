
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int INT_MAX ;
 int INT_MIN ;
 int UINT_MAX ;
 int snprintf (char*,int,char*,unsigned int,...) ;
 int test_lookup_fail (char*) ;
 int test_lookup_pass (char*) ;

__attribute__((used)) static void test_lookup(unsigned int fd)
{
 char buf[64];
 unsigned int c;
 unsigned int u;
 int i;

 snprintf(buf, sizeof(buf), "/proc/self/fd/%u", fd);
 test_lookup_pass(buf);


 for (c = 1; c <= 255; c++) {
  if (c == '/')
   continue;
  snprintf(buf, sizeof(buf), "/proc/self/fd/%c%u", c, fd);
  test_lookup_fail(buf);
 }


 for (c = 1; c <= 255; c++) {
  if (c == '/')
   continue;
  snprintf(buf, sizeof(buf), "/proc/self/fd/%u%c", fd, c);
  test_lookup_fail(buf);
 }

 for (i = INT_MIN; i < INT_MIN + 1024; i++) {
  snprintf(buf, sizeof(buf), "/proc/self/fd/%d", i);
  test_lookup_fail(buf);
 }
 for (i = -1024; i < 0; i++) {
  snprintf(buf, sizeof(buf), "/proc/self/fd/%d", i);
  test_lookup_fail(buf);
 }
 for (u = INT_MAX - 1024; u <= (unsigned int)INT_MAX + 1024; u++) {
  snprintf(buf, sizeof(buf), "/proc/self/fd/%u", u);
  test_lookup_fail(buf);
 }
 for (u = UINT_MAX - 1024; u != 0; u++) {
  snprintf(buf, sizeof(buf), "/proc/self/fd/%u", u);
  test_lookup_fail(buf);
 }


}
