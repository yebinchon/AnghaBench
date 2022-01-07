
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* int_tests ;
 unsigned int n_int_tests ;

__attribute__((used)) static int int_find(int n)
{
    unsigned int i;

    for (i = 0; i < n_int_tests; i++)
        if (int_tests[i] == n)
            return i;
    return -1;
}
