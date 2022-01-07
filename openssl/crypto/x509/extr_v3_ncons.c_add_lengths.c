
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INT_MAX ;

__attribute__((used)) static int add_lengths(int *out, int a, int b)
{

    if (a < 0)
        a = 0;
    if (b < 0)
        b = 0;

    if (a > INT_MAX - b)
        return 0;
    *out = a + b;
    return 1;
}
