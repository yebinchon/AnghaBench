
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int) ;

__attribute__((used)) static inline int
modulo_add(int x, int y, int mod)
{
    int sum = x + y;
    ASSERT(0 <= x && x < mod && -mod <= y && y <= mod);
    if (sum >= mod)
    {
        sum -= mod;
    }
    if (sum < 0)
    {
        sum += mod;
    }
    return sum;
}
