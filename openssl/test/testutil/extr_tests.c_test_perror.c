
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEST_error (char*,char const*,int ) ;
 int errno ;
 int strerror (int ) ;

void test_perror(const char *s)
{




    TEST_error("%s: %s", s, strerror(errno));
}
