
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_context (int *) ;

__attribute__((used)) static int test_def_context(void)
{
    return test_context(((void*)0));
}
