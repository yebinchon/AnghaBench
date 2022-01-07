
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_provider (char const*) ;

__attribute__((used)) static int test_loaded_provider(void)
{
    const char *name = "p_test";

    return test_provider(name);
}
