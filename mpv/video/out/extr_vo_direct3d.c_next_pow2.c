
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INT_MAX ;

__attribute__((used)) static int next_pow2(int v)
{
    for (int x = 0; x < 30; x++) {
        if ((1 << x) >= v)
            return 1 << x;
    }
    return INT_MAX;
}
