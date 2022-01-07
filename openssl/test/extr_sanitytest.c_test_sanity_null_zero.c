
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int p ;
typedef int bytes ;


 int TEST_mem_eq (char**,int,char*,int) ;
 int memset (char*,int ,int) ;

__attribute__((used)) static int test_sanity_null_zero(void)
{
    char *p;
    char bytes[sizeof(p)];


    p = ((void*)0);
    memset(bytes, 0, sizeof(bytes));
    return TEST_mem_eq(&p, sizeof(p), bytes, sizeof(bytes));
}
