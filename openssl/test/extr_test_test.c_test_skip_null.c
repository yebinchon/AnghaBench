
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEST_skip (int *) ;

__attribute__((used)) static int test_skip_null(void)
{




    return TEST_skip(((void*)0));
}
