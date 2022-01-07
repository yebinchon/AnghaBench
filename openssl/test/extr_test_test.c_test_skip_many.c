
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEST_skip (char*,int) ;

__attribute__((used)) static int test_skip_many(int n)
{
    return TEST_skip("skip tests: %d", n);
}
