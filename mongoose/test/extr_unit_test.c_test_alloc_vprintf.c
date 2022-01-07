
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int ASSERT (int) ;
 int ASSERT_EQ (int ,int) ;
 int ASSERT_STREQ (char*,char*) ;
 int avt (char**,int,char*,int) ;
 int free (char*) ;

__attribute__((used)) static const char *test_alloc_vprintf(void) {
  char buf[5], *p = buf;

  ASSERT_EQ(avt(&p, sizeof(buf), "%d", 123), 3);
  ASSERT(p == buf);
  ASSERT_STREQ(p, "123");

  ASSERT_EQ(avt(&p, sizeof(buf), "%d", 123456789), 9);
  ASSERT(p != buf);
  ASSERT_STREQ(p, "123456789");
  free(p);

  return ((void*)0);
}
